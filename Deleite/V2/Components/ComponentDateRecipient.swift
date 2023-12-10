//
//  ComponentDateRecipient.swift
//  Deleite
//
//  Created by Thaynara da Silva Andrade on 08/12/23.
//

import SwiftUI
import Nuvem
import CloudKit

struct ComponentDateRecipient: View {
    
    @AppStorage("motherName") var motherName: String = ""
    @AppStorage("motherDate") var motherDate: String = ""
    
    @Binding var newScheduling: SchedulingModel
    
    @State var confirmAppointment:Bool = false
    
    var body: some View {
        HStack(){
            Button {
                Task {
                    newScheduling.collectDate = newScheduling.collectDate // FIX NUVEM BUG
                    newScheduling.motherName = motherName // FIX NUVEM BUG
                    try await newScheduling.save(on: CKContainer.default().publicCloudDatabase)
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
//    ComponentDateRecipient(newScheduling: $newScheduling)
//}
