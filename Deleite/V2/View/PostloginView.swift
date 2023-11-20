//
//  PostloginView.swift
//  Deleite
//
//  Created by Thaynara da Silva Andrade on 20/10/23.
//

import SwiftUI

struct PostloginView: View {
    @State private var showAlert = false
    @State var openRegistrationSheet = false
    
    var body: some View {
        NavigationView{
            ZStack(alignment: .topLeading) {
               Color("")
                 .edgesIgnoringSafeArea(.all)
                
                Button(action: {
                    self.showAlert = true
                }) {
                    Image(systemName: "questionmark.circle")
                        .font(.system(size: 24))
                        .foregroundColor(Color("icon-color"))
                        .padding(.leading, 340)
                        .padding(.top, 15)
                } .alert(isPresented: $showAlert) {
                    Alert(
                        title: Text("Ajuda"),
                        message: Text("Para obter suporte, entre em \ncontato no botão abaixo"),
                        primaryButton: .default(Text("Falar com Suporte"), action: {
                            
                            if let url = URL(string: "https://christianpaulo.com.br/deleite/") {
                                UIApplication.shared.open(url)
                            }
                        }),
                        secondaryButton: .cancel(Text("Cancelar"))
                    )
                }
                
                VStack(alignment: .leading) {
                    
                    Image("Deleite")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 110)
                        .padding(.leading, 20)
                        .padding(.bottom, 5)
                        .padding(.top)
                    
                    Text("Seja bem vinda!")
                        .padding(.leading, 20)
                        
                    HStack{
                        Text("Você está no")
                            .padding(.leading, 20)
                            
                        
                        Text("MEAC")
                            .fontWeight(.bold)
                            
                        
                        
                    }
                    
                        VStack{
                                ComponentDonationView(Logintitle: "Fazer \ndoação", Loginname: "Agende o recebimento \ndo seu potinho ou a melhor \ndata para fazer a coleta do leite", LoginImage: Image("Doar"))
                            HStack{
                                Text("Agendamentos")
                                    .font(.system(size: 25))
                                    .fontWeight(.bold)
                                    .padding(.top)
                                    .padding(.bottom, 10)
                                Text("Ver todos")
                                    .padding(.leading, 80)
                                    .padding(.bottom, -15)
                                    .foregroundColor(.gray)


                            }
//                        ComponentSectionView(Logintitle: "Entrega do kit", LoginDate: "27 de fevereiro", LoginTurno: "Manhã", LoginImage: Image("pote"))
                            SchedulingModelListView()
                    }.padding()
                    
                }
            }
        }
        
    }
}

#Preview {
    PostloginView()
}
