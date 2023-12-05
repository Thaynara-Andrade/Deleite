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
                            Text("A coleta foi entregue?")
                                .fontWeight(.semibold)
                                .padding()
                            
                            HStack {
                                Button("Sim"){
                                    respostaEntrega = true
                                    exibirSheet.toggle()
                                    // Ação quando a resposta for "Sim"
                                }
                                .padding()
                                
                                Button("Não") {
                                    respostaEntrega = false
                                    exibirSheet.toggle()
                                    // Ação quando quando a resposta for "Não"
                                }
                                .padding()
                            }
                        }
                    }
                Divider()
                
            }
            
            ComponentEmpytState(
                LoginImage: Image(systemName: "calendar.badge.plus"),
                Loginname: "Ainda não há agendamentos"
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
                .all()
        } catch {
            print(error)
        }
    }
    
    
}



#Preview {
    ModelScheduling()
}
