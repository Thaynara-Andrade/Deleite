//
//  PostloginView.swift
//  Deleite
//
//  Created by Thaynara da Silva Andrade on 20/10/23.
//

import SwiftUI

struct PostloginView: View {
    
    @State private var isToggled = false
    
    var body: some View {
        ZStack(alignment: .topLeading) {
            Color("Text-Color")
                .edgesIgnoringSafeArea(.all)
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
                    
                    
                    Text("Agendamentos")
                        .font(.system(size: 25))
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                        .padding(.leading, -160)
                        .padding(.top)
                        .padding(.bottom, 3)
                    
                    ComponentSectionView(Logintitle: "Entrega do kit", LoginDate: "27 de fevereiro", LoginTurno: "Manhã", LoginImage: Image("pote"))
                }.padding()
                
            }
            
        }
        
    }
}

#Preview {
    PostloginView()
}
