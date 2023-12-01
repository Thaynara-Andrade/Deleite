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
            Section(footer:
                HStack(alignment: .center){
                    Image("bottle-blue")
                        .frame(width: 105, height: 105)
                }
                .padding(.leading, 121)
                
            ){}
            Section(footer:
                HStack(alignment: .center){
                    Text("Qual a data de \n retirada do leite?")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .multilineTextAlignment(.center)
                }
                .padding(.leading, 31)
            ){}
        
            Section {
                DatePicker("Data para coleta", selection: $collectionDateRecipient,
                           in: dateRange, displayedComponents: .date)
            }
            
            Section(footer:
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
                .padding(.top, 220)
            ) {}
            
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
    }
}

#Preview {
    NavigationView{
        RecipientRegistrationView(openRegistrationSheet: .constant(true))
    }
}
