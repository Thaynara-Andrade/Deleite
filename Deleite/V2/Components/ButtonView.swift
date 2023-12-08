//
//  ButtonView.swift
//  Deleite
//
//  Created by Thaynara da Silva Andrade on 06/11/23.
//

import SwiftUI

struct ButtonView: View {
    let ButtonView: String
    @State private var isPostLoginViewActive = false
    @Binding var openRegistrationSheet: Bool
    
    var body: some View {
        
        HStack{
            NavigationLink(isActive: $isPostLoginViewActive) {
                RegisterDonationView(openRegistrationSheet: $openRegistrationSheet)
            } label: {
                Text(ButtonView)
                    .fontWeight(.semibold)
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
}

#Preview {
    ButtonView(ButtonView: "Ir para agendamento", openRegistrationSheet: .constant(true))
}

