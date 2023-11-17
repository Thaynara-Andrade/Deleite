//
//  ComponentBottomless.swift
//  Deleite
//
//  Created by Thaynara da Silva Andrade on 07/11/23.
//

import SwiftUI

struct ComponentBottomless: View {
    let Buttomless: String
    @State private var isPostLoginViewActive = false
    @Binding var openRegistrationSheet: Bool
    
    var body: some View {
        
        HStack{
            NavigationLink(isActive: $isPostLoginViewActive) {
                RegisterDonationView(openRegistrationSheet: $openRegistrationSheet)
            } label: {
                Text(Buttomless)
                    .multilineTextAlignment(.center)
                    .foregroundColor(Color(red: 0.1, green: 0.48, blue: 0.55))
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
    ComponentBottomless(Buttomless: "Ir para agendamento", openRegistrationSheet: .constant(true))
}

