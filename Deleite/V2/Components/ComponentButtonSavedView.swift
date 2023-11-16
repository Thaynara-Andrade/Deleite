//
//  ButtonSavedView.swift
//  Deleite
//
//  Created by Raina on 07/11/23.
//

import SwiftUI

struct ComponentButtonSavedView: View {
    
    @State var saveSchedule:Bool = false
    
    var body: some View {
        HStack(){
            Button {
                saveSchedule = true
            } label: {
                HStack(alignment: .center, spacing: 10) {
                    Text("Salvar")
                        .font(
                        Font.custom("SF Pro Text", size: 17)
                        .weight(.semibold)
                        )
                        .multilineTextAlignment(.center)
                        .foregroundColor(Color(red: 0.1, green: 0.48, blue: 0.55))
                }
                .padding(.horizontal, 20)
                .padding(.vertical, 13)
                .frame(width: 326, alignment: .center)
                .background(Color(red: 0.95, green: 0.87, blue: 0.62))
                .cornerRadius(15)
            }
            .sheet(isPresented: $saveSchedule, onDismiss: nil) {
                RegistrationDatesView()
            }
        }
    }
}

#Preview {
    ComponentButtonSavedView()
}
