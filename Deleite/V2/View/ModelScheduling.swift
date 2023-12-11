//
//  ModelScheduling.swift
//  Deleite
//
//  Created by Thaynara da Silva Andrade on 27/11/23.
//

import SwiftUI
import CloudKit
import Nuvem


struct ModelScheduling: View {
    
    @State var schedulings: [SchedulingModel] = []
    
    @AppStorage("collectDate") var collectDate: String = ""
    @AppStorage("motherName") var motherName: String = ""
    
    let database = CKContainer.default().publicCloudDatabase
    @State private var exibirSheet2 = false
    @State private var respostaEntrega: Bool? = nil
    
    @State private var nextSheet: Bool = false
    @State private var acceptedRequest: Bool = false
    @State private var showComponentRequestSheet = false
    
    @Binding var openRegistrationSheet: Bool
    
    let dateFormatter: DateFormatter = {
        let formatter = DateFormatter()
        formatter.dateFormat = "dd 'de' MMMM 'de' yyyy"
        formatter.locale = Locale(identifier: "pt_BR")
        return formatter
    }()
    

    var body: some View {

            VStack {
                ForEach(schedulings) { scheduling in
                    VStack(alignment: .leading) {
                        
                        Text("Coleta de Leite Materno")
                            .font(
                                Font.custom("SFProRounded-Black", size: 22)
                            )
                            .multilineTextAlignment(.leading)
                            .foregroundColor(Color("Text-Color"))
                            .padding(1)
                        
                        Text(dateFormatter.string(from: scheduling.collectDate))
                            .foregroundStyle(.black)
                            .font(.system(size: 17))
                            .padding(1)
                        
                        HStack{
                            Image(systemName: "clock.fill")
                                .foregroundStyle(.black)
                                .padding(.bottom)
                            
                            Text ("Solicitação Agendada")
                                .foregroundStyle(.black)
                                .font(.system(size: 17))
                                .padding(.bottom)
                        }
                        
                        VStack{
                            Button("Como foi a coleta?") {
                                exibirSheet2.toggle()
                                
                            } .fontWeight(.semibold)
                                .frame(width: 280, height: 14)
                                .padding()
                                .background(Color("Button-Yellow"))
                                .foregroundColor(Color("Text-Color"))
                                .cornerRadius(15)
                            
                            
                        }.sheet(isPresented: $exibirSheet2){
                            ComponentRequest(openRegistrationSheet: $openRegistrationSheet)
                                .presentationDetents([.large, .medium, .fraction(0.75)])
                            
                        }
                    } .frame(width: 346, height: 184)
                        .background(Color("Card"))
                        .cornerRadius(22)
                        .shadow(color: .black.opacity(0.2), radius: 3, x: 0, y: 0)
                    Spacer(minLength: 20)
                }
                
                Spacer(minLength: 130)
                ComponentEmpytState(
                    LoginImage: Image(systemName: "calendar.badge.plus"),
                    Loginname: "Sem agendamentos\nativos no momento"
                )
                .opacity(schedulings.isEmpty ? 1 : 0)
            
        }
        .task {
            await loadSchedulings()
        }
    }
    
    
    func loadSchedulings() async {
        do {
            schedulings = try await SchedulingModel
                .query(on: database)
                .filter(\.$motherName == motherName)
                .all()
        } catch {
            print(error)
        }
    }
    
    
}



//#Preview {
//    ModelScheduling()
//}
