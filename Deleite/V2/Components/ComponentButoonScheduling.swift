//
//  ComponentButoonScheduling.swift
//  Deleite
//
//  Created by Raina on 13/11/23.
//

import SwiftUI

struct ComponentButoonScheduling: View {
    let scheduleDonation: String
    @State private var isPostLoginViewActive = false
    
    init(scheduleDonation: String) {
        self.scheduleDonation = scheduleDonation
    }
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
            RegisterDonationView()
        }
    }
}

#Preview {
    ComponentButoonScheduling(scheduleDonation: "Ir para agendamentos")
}
