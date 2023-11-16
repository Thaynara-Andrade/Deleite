//
//  ComponentButoonScheduling.swift
//  Deleite
//
//  Created by Raina on 13/11/23.
//

import SwiftUI

struct ComponentButoonScheduling: View {
    
    let scheduleDonation: String
    @Binding var openRegistrationSheet: Bool
    @State private var isPostLoginViewActive = false
    
    var body: some View {
        
        Button(action: {
            isPostLoginViewActive = true
        }) {
            
            HStack(alignment: .center, spacing: 10) {
                Text(scheduleDonation)
                    .bold()
                    .multilineTextAlignment(.center)
                    .foregroundColor(Color("Text-Color"))
            }
            .padding(.horizontal, 20)
            .padding(.vertical, 13)
            .frame(width: 326, alignment: .center)
            .background(Color(red: 0.95, green: 0.87, blue: 0.62))
            .cornerRadius(15)
        } .fullScreenCover(isPresented: $isPostLoginViewActive) {
            RegisterDonationView(openRegistrationSheet: $openRegistrationSheet)
        }
    }
}

#Preview {
    ComponentBottomless(Buttomless: "Teste", openRegistrationSheet: .constant(true))
}
