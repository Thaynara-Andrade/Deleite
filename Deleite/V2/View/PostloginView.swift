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
            ScrollView{
                ZStack(alignment: .topLeading) {
                    
                    Button(action: {
                        self.showAlert = true
                    }) {
                        Image(systemName: "questionmark.circle")
                            .font(.system(size: 24))
                            .foregroundColor(Color("icon-color"))
                            .padding(.leading, 340)
                            
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
                            .frame(width: 100)
                            .padding(.top)
                            
                        
                        Text("Seja bem vinda!")
                        
                        HStack{
                            Text("Você está no")
                            
                            Text("MEAC")
                                .fontWeight(.bold)
                                
                            
                            
                            
                        }
                        
                        ZStack {
                            ComponentDonationView(Logintitle: "Fazer \ndoação", Loginname: "Agende o recebimento \ndo seu potinho ou a melhor \ndata para fazer a coleta do leite", LoginImage: Image("Doar"))
                                
                        }
                            HStack (spacing: 73) {
                                Text("Agendamentos")
                                    .font(.system(size: 25))
                                    .fontWeight(.bold)
                                    .padding(.leading)
                                    .padding(.top)
                                
                                
                                Text("Ver todos")
                                    .padding(.trailing)
                                    .padding(.top)
                                    .foregroundColor(.gray)
                                
                            }
                            
                            VStack (alignment: .center){
                                ModelScheduling()
                                
                            }
                        
                        
                    } .padding(.leading)
                }
            }
        }
    }
}

#Preview {
    PostloginView()
}
