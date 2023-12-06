//
//  ButtonNoLoginView.swift
//  Deleite
//
//  Created by Marília de Sousa on 06/12/23.
//

import SwiftUI

struct ButtonNoLoginView: View {
    let ButtonNoLogin: String
    
    init(ButtonNoLogin: String) {
        self.ButtonNoLogin = ButtonNoLogin
    }
    var body: some View {
        
            HStack(alignment: .center, spacing: 10) {
                Text(ButtonNoLogin)
                    .bold()
                    .multilineTextAlignment(.center)
                    .foregroundColor(Color("icon-color"))
            }
            .padding(.horizontal, 20)
            .padding(.vertical, 13)
            .frame(width: 326, alignment: .center)
            .background(Color.white)
            .cornerRadius(15)
    }
}

#Preview {
    ButtonNextView(ButtonNext: "Entrar")
}
