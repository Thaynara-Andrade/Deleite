//
//  ComponetButtonConfirmRegistreView.swift
//  Deleite
//
//  Created by Raina on 08/11/23.
//

import SwiftUI
import Nuvem
import CloudKit

struct ComponetButtonConfirmRegistreView: View {
    
    @AppStorage("motherName") var motherName: String = ""
    @AppStorage("motherDate") var motherDate: String = ""
    
    @Binding var newScheduling: SchedulingModel
    
    @State var confirmAppointment:Bool = false
    
    var body: some View {
        HStack(){
            Button {
                Task {
                    newScheduling.milkPickupDate = newScheduling.milkPickupDate // FIX NUVEM BUG
                    try await newScheduling.save(on: CKContainer.default().publicCloudDatabase)
                    motherName = newScheduling.motherName
                    confirmAppointment = true
                }
            } label: {
                HStack(alignment: .center, spacing: 10) {
                    Text("Confirmar agendamento")
                        .fontWeight(.semibold)
                        .multilineTextAlignment(.center)
                        .foregroundColor(Color(red: 0.1, green: 0.48, blue: 0.55))
                }
                .padding(.horizontal, 20)
                .padding(.vertical, 13)
                .frame(width: 326, alignment: .center)
                .background(Color(red: 0.95, green: 0.87, blue: 0.62))
                .cornerRadius(15)
                .fullScreenCover(isPresented: $confirmAppointment) {
                   SucessLottieView(openRegistrationSheet: .constant(true))
                }
            }
        }
    }
}

//#Preview {
//    ComponetButtonConfirmRegistreView()
//}
