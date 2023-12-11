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
    
    let dateFormatter: DateFormatter = {
        let formatter = DateFormatter()
        formatter.dateFormat = "dd 'de' MMMM 'de' yyyy"
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
                        .foregroundColor(Color("Text"))
                        .font(.system(size: 17))
                        .padding(1)
                    
                    HStack{
                        Image(systemName: "clock.fill")
                            .foregroundColor(Color("Text"))
                        
                        Text ("Solicitação Agendada")
                            .foregroundColor(Color("Text"))
                            .font(.system(size: 17))
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
                        ComponentRequest()
                            .presentationDetents([.large, .medium, .fraction(0.75)])
                    
                    }
                }
                
                Divider()
                
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



#Preview {
    ModelScheduling()
}
