//
//  ImageCard.swift
//  Deleite
//
//  Created by Marília de Sousa on 13/09/23.
//

import SwiftUI


struct ImageCard: View {
    
    var body: some View {
        VStack(alignment: .leading, spacing: 14.0)    {
            Image("mama")
                .resizable()
                .frame(width: 150, height: 120)
            cardText.padding(.horizontal, 10)
        }
        .background(Color.white)
        .clipShape(RoundedRectangle(cornerRadius: 30.0))
        .shadow(radius: 8)
    }
    
    var cardText: some View {
        VStack (alignment: .leading){
            Text("Aleitamento")
                .font(.headline)
            HStack (spacing: 14) {
               
            } .foregroundColor(.gray)
                .padding(.bottom, 14)
          
        }
    }
}

struct ImageCard_Previews: PreviewProvider {
    static var previews: some View {
        ImageCard()
            .frame(width: 150, height: 120)
    }
}


