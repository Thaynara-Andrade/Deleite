//
//  CardExpirado.swift
//  Deleite
//
//  Created by Marília de Sousa on 30/11/23.
//

import SwiftUI

struct CardExpirado: View {
    
    let cardTitle: String
    let cardTitle2: String
    let cardTitle3: String
    let cardTitle4: String
    let cardImage: Image
    
    init(cardTitle: String, cardTitle2: String, cardTitle3: String, cardTitle4: String, cardImage: Image) {
        self.cardTitle = cardTitle
        self.cardTitle2 = cardTitle2
        self.cardTitle3 = cardTitle3
        self.cardTitle4 = cardTitle4
        self.cardImage = cardImage
    }
    
    var body: some View {
        
        
        ZStack (alignment: .leading) {
            Rectangle()
                .frame(width: 356, height: 146)
                .foregroundColor(Color.white)
                .background(.white)
                .cornerRadius(12)
                .shadow(radius: 3)
            
            
            VStack (alignment: .leading) {
                Text(cardTitle)
                    .font(Font.custom("SFProRounded-Black", size: 22))
                    .foregroundColor(Color("Text-Color"))
                    .padding(.leading, 19)
                
                Text(cardTitle2)
                    .font(.system(size: 17))
                    .padding(.top, -8)
                    .padding(.leading, 19)
                
                Text(cardTitle3)
                    .font(.system(size: 17))
                    .padding(.top, -4)
                    .padding(.leading, 19)
                
                HStack {
                    cardImage
                        .resizable()
                        .scaledToFit()
                        .foregroundColor(Color.gray)
                        .frame(width: 17)
                    
                    
                    Text(cardTitle4)
                        .font(.system(size: 17))
                        .foregroundStyle(Color.gray)
                }
                .padding(.leading, 19)
            }
        }
    }
}

#Preview {
    CardExpirado(cardTitle: "Coleta de Leite Materno", cardTitle2 :"21 de abril de 2023", cardTitle3: "Manhã", cardTitle4: "Status: Agendamento não avaliado", cardImage: Image(systemName: "x.circle"))
}