//
//  MenuButtonLogin.swift
//  Deleite
//
//  Created by Marília de Sousa on 23/10/23.
//

import SwiftUI

struct MenuButtonLogin: View {
    
    var body: some View {
        ZStack {
            Color("Text-Color")
                .ignoresSafeArea(.all)
            Rectangle()
                .frame(width: 340, height: 160)
                .cornerRadius(22)
                .foregroundColor(Color("Buttonvariable-Color"))
                .padding(.top, -300 )
            
            VStack(){
                Text("Seja Doadora")
                    .foregroundColor(Color("Text-Color"))
                    .font(.title2)
                    .bold()
            
                    Text("Clique aqui e em poucos passos\nvocê irá se tornar uma doadora e\nsalvar diversas vidas")
                    .font(.system(size: 17, weight: .bold))
                    .fontWeight(.regular)
                    .foregroundColor(Color("Text-Color"))

            }
            .padding(.horizontal, -60)
            .padding(.top, -280)
        }
    }
}


#Preview {
    MenuButtonLogin()
}
