//
//  PostloginView.swift
//  Deleite
//
//  Created by Thaynara da Silva Andrade on 20/10/23.
//

import SwiftUI

struct PostloginView: View {
    
    var body: some View {
        NavigationView{
            ZStack(alignment: .topLeading) {
                Color("Text-Color")
                    .edgesIgnoringSafeArea(.all)
                
                Image(systemName: "questionmark.circle")
                    .font(.system(size: 25))
                    .foregroundColor(.white)
                    .padding(.leading, 340)
                    .padding(.top, 15)
                
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
                        .foregroundColor(.white)
                    HStack{
                        Text("Você está no")
                            .padding(.leading, 20)
                            .foregroundColor(.white)
                        
                        Text("MEAC")
                            .fontWeight(.bold)
                            .foregroundColor(.white)
                        
                        
                    }
                    
                        VStack{
                                ComponentDonationView(Logintitle: "Fazer \ndoação", Loginname: "Agende o recebimento \ndo seu potinho ou a melhor \ndata para fazer a coleta do leite", LoginImage: Image("Doar"))
                            HStack{
                                Text("Agendamentos")
                                    .font(.system(size: 25))
                                    .fontWeight(.bold)
                                    .foregroundColor(.white)
                                    .padding(.top)
                                    .padding(.bottom, 3)
                                Text("Ver todos")
                                    .padding(.leading, 80)
                                    .padding(.bottom, -15)
                                    .foregroundColor(Color(red: 0.78, green: 0.78, blue: 0.78))


                            }
                        ComponentSectionView(Logintitle: "Entrega do kit", LoginDate: "27 de fevereiro", LoginTurno: "Manhã", LoginImage: Image("pote"))
                    }.padding()
                    
                }
            }
        }
        
    }
}

#Preview {
    PostloginView()
}
