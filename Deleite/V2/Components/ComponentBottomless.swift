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
    
    init(Buttomless: String) {
        self.Buttomless = Buttomless
    }
    var body: some View {
        
        
        Button(action: {
            isPostLoginViewActive = true
        }) {
            HStack(alignment: .center, spacing: 10) {
                Text(Buttomless)
                    .multilineTextAlignment(.center)
                    .foregroundColor(Color("Text-Color"))
                
            }
            .padding(.horizontal, 20)
            .padding(.vertical, 13)
            .frame(width: 326, alignment: .center)
            .cornerRadius(15)
            .overlay(
                RoundedRectangle(cornerRadius: 15)
                    .inset(by: 1.5)
                    .stroke(Color("Text-Color")))
        } .fullScreenCover(isPresented: $isPostLoginViewActive) {
            RegisterDonationView()
        }
    }
}

#Preview {
    ComponentBottomless(Buttomless: "Ir para agendamentos")
}

