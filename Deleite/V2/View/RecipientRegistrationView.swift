//
//  RecipientRegistrationView.swift
//  Deleite
//
//  Created by Raina on 14/11/23.
//

import SwiftUI

struct RecipientRegistrationView: View {
    
    @Binding var openRegistrationSheet: Bool
    
    @Environment(\.dismiss) var dismiss
    @State private var collectionDateRecipient = Date()
    let dateRange: ClosedRange<Date> = {
        let calendar = Calendar.current
        let endDate = Date.now.advanced(by: (60 * 60 * 24) * 14)
        return Date.now...endDate
    }()
    @State var confirmAppointmentRecipient:Bool = false
    
    
    var body: some View {
        Form{
            Section {
                DatePicker("Data para coleta", selection: $collectionDateRecipient,
                           in: dateRange, displayedComponents: .date)
            }
            .navigationTitle("Agendamento")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button("Cancelar") {
                        openRegistrationSheet = false
                    }
                }
            }
        }
        .safeAreaInset(edge: .top, content: {
            HStack{
                Text("Qual a data de\nretirada do leite?")
                    .font(
                        Font.custom("SFProRounded-Semibold", size: 34)
                            .weight(.bold)
                    )
                    .multilineTextAlignment(.center)
            }
            .padding(.top, 1)
        })
        .safeAreaInset(edge: .top, content: {
            HStack{
                Image("bottle-blue")
                    .frame(width: 105, height: 105)
            }
            .padding(.top, 44)
            .scaledToFit()
        })
        .safeAreaInset(edge: .bottom, content: {
            Text("o leite humano pode ser armazenado no congelador por até 15 dias após a primeira coleta.")
                .font(Font.custom("SF Pro", size: 13))
                .foregroundColor(Color.gray)
                .frame(width: 303, alignment: .topLeading)
                .padding(.bottom, 180)
                .padding(.leading, -30)
        })
        .safeAreaInset(edge: .bottom, content: {
            HStack(){
                Button {
                    confirmAppointmentRecipient = true
                } label: {
                    HStack(alignment: .center, spacing: 10) {
                        Text("Confirmar agendamento")
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
                    .fullScreenCover(isPresented: $confirmAppointmentRecipient) {
                        SucessLottieView(openRegistrationSheet: $openRegistrationSheet)
                    }
                }
            }
            .padding(.bottom, 54)
        })
    }
}

#Preview {
    NavigationView{
        RecipientRegistrationView(openRegistrationSheet: .constant(true))
    }
}
