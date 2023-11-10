//
//  ShowRegistrationConfirmationView.swift
//  Deleite
//
//  Created by Raina on 08/11/23.
//

import SwiftUI

struct ShowRegistrationConfirmationView: View {
    
    var imageCheck: String = "confimation"
    
    var body: some View {
            HStack{
                Image(imageCheck)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 145, height: 145)
            }
            .border(/*@START_MENU_TOKEN@*/Color.black/*@END_MENU_TOKEN@*/)
            .padding(.top, -120)
            
            HStack{
                Text("Seu agendamento foi \n realizado com sucesso!")
                    .font(
                    Font.custom("SF Pro", size: 28)
                    .weight(.semibold)
                    )
                    .multilineTextAlignment(.center)
                    .foregroundColor(Color(red: 0.1, green: 0.48, blue: 0.55))
            }
            .border(Color.red)
    }
}
#Preview {
    ShowRegistrationConfirmationView()
}
