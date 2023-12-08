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
    @State private var exibirSheet = false
    @State private var respostaEntrega: Bool? = nil
    
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
                        .font(.system(size: 17))
                        .padding(1)
                    
                    
                    HStack{
                        Image(systemName: "clock.fill")
                        Text ("Solicitação Agendada")
                            .font(.system(size: 17))
                    }
                    
                    Button(action: {
                        exibirSheet.toggle()
                    }) {
                        Text("Como foi a coleta?")
                            .fontWeight(.semibold)
                            .frame(width: 280, height: 14)
                            .padding()
                            .background(Color("Button-Yellow"))
                            .foregroundColor(Color("Text-Color"))
                            .cornerRadius(15)
                    }
                    .padding(.top)
                    
                } .padding()
                
                    .sheet(isPresented: $exibirSheet) {
                        VStack {
                            Text("Sua solicitação foi atendida?")
                                .fontWeight(.bold)
                                .padding()
                            
                            VStack {
                                Button(action: {
                                    respostaEntrega = true
                                    exibirSheet.toggle()
                                    // Ação quando a resposta for "Sim"
                                }) {
                                    Text("Sim, foi atendida")
                                        .fontWeight(.semibold)
                                        .frame(width: 330, height: 50)
                                        .background(Color("Button-Yellow"))
                                        .cornerRadius(20)
                                        .foregroundColor(.black)
                                }
                                .multilineTextAlignment(.center)
                                
                                Button(action: {
                                    respostaEntrega = false
                                    exibirSheet.toggle()
                                    // Ação quando a resposta for "Não"
                                }) {
                                    Text("Não, não recebi a visita")
                                        .fontWeight(.semibold)
                                        .frame(width: 330, height: 50)
                                        .background(Color("Gray"))
                                        .cornerRadius(20)
                                        .foregroundColor(.black)
                                }
                            }
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
