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
                    ComponentDonationView(Logintitle: "Fazer \ndoação", Loginname: "Agende o recebimento \ndo seu potinho ou escolha \na melhor data para fazer sua coleta", LoginImage: Image("Doar"))
                    
                    
                    Text("Agendamentos")
                        .font(.largeTitle)
                        .fontWeight(.heavy)
                        .foregroundColor(.white)
                        .padding(.leading, -80)
                        .padding(.top)
                        .padding(.bottom, 3)
                    
                    ComponentSectionView(Logintitle: "Recebimento \nde pote", Loginname: "Nome: Maria Cleide", LoginDate: "Data: 27/02", LoginEndereco: "Endereço: Rua São José, 155", LoginRegional: "Regional III - Benfica", LoginImage: Image("pote")
                    )
                    
                }
            }
            
        }
        
    }
}

#Preview {
    PostloginView()
}
