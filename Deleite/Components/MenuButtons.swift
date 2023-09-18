//
//  MenuButtons.swift
//  Deleite
//
//  Created by Marília de Sousa on 13/09/23.
//
//
import SwiftUI

struct MenuButtons: View {
    
    var body: some View {
        
        VStack(alignment: .leading, spacing: 16.0) {
            Image("mama")
                .resizable()
                .frame(width: 200, height: 200)
            cardText.padding(.horizontal, 8)
        }
        .clipShape(RoundedRectangle(cornerRadius: 24.0))
        .shadow(radius: 8)
    }
    
    var cardText: some View {
        VStack (alignment: .leading){
            Text("Primeiros Cuidados")
                .font(.headline)
            HStack (spacing: 4.0){
                Image(systemName: "face.smiling")
                Text("Passo a Passo")
                    .multilineTextAlignment(.leading)
            } .foregroundColor(.gray)
                .padding(.bottom, 16)
            
        }
    }
}

struct MenuButtons_Previews: PreviewProvider {
    static var previews: some View {
        MenuButtons()
            .frame(width: 200, height: 200, alignment: .center)
    }
}
