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
        ZStack(alignment: .bottomLeading) {
            Color("Text-Color")
                .edgesIgnoringSafeArea(.all)
            VStack(alignment: .leading) {
                Image("Deleite")
                    .padding(.leading, 20)
                
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
            
                ZStack{
                    Rectangle()
                        .frame(width: 355.0, height: 160.0)
                        .cornerRadius(20)
                        .padding([.bottom], 460.0)
                        .foregroundColor(Color("Buttonvariable-Color"))
                    
                    Text("Fazer \ndoação")
                        .font(
                            Font.custom("SFProRounded-Black", size: 35)
                        )
                        .padding(.horizontal, -155)
                        .foregroundColor(Color("Text-Color"))
                        .padding([.bottom], 515.0)
                    
                    Text("Agende um recebimento do seu \npotinho para doação ou escolha a \nmelhor data para fazer sua coleta")
                        .font(.system(size: 11, weight: .bold))
                        .fontWeight(.regular)
                        .padding(.horizontal, -155)
                        .foregroundColor(Color("Text-Color"))
                        .padding([.bottom], 380.0)
                    
                    Image("Doar")
                        .resizable()
                        .frame(width: 150, height: 117)
                        .padding([.leading], 227)
                        .padding([.bottom], 480.0)
                    
                    VStack {
                        Text("Agendamentos")
                            .font(Font.custom("SFProRounded-Black", size: 30))
                            .foregroundColor(.white)
                            .padding(.leading, -110)
                        
                            ComponentSectionView(Logintitle: "Recebimento \nde pote", Loginname: "Nome: Maria Cleide Resende", LoginDate: "Data: 27/02", LoginEndereco: "Endereço: Rua São José, 155", LoginRegional: "Regional III - Benfica", LoginImage: Image("pote")
                            )
                        
                    }
                }
            }
            
        }
        
    }
}

#Preview {
    PostloginView()
}
