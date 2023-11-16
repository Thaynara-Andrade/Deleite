//
//  ButtonNextView.swift
//  Deleite
//
//  Created by Thaynara da Silva Andrade on 07/11/23.
//

import SwiftUI

struct ButtonNextView: View {
    let ButtonNext: String
    
    init(ButtonNext: String) {
        self.ButtonNext = ButtonNext
    }
    var body: some View {
        
            HStack(alignment: .center, spacing: 10) {
                Text(ButtonNext)
                    .bold()
                    .multilineTextAlignment(.center)
                    .foregroundColor(Color("icon-color"))
            }
            .padding(.horizontal, 20)
            .padding(.vertical, 13)
            .frame(width: 326, alignment: .center)
            .background(Color(red: 0.95, green: 0.87, blue: 0.62))
            .cornerRadius(15)
    }
}

#Preview {
    ButtonNextView(ButtonNext: "Continuar")
}
