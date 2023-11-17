//
//  RegisterDonationView.swift
//  Deleite
//
//  Created by Raina on 06/11/23.
//

import SwiftUI

struct RegisterDonationView: View {
    
    @Binding var openRegistrationSheet: Bool
    
    @Environment(\.dismiss) var dismiss
    @State var notifyMeAbout:Bool = false
    @State var NotifyMeAboutType:Bool = false
    @State var shownextPageRegister:Bool = true
    @State var name:String = ""
    @State private var cep:String = ""
    
    var body: some View {
        Form{
            
            Section(header: Text("Informações Pessoais")) {
                TextField("Nome", text: $name)
                TextField("CEP", text: $cep)
            }
            
            Section(header: Text("Regional")) {
                Picker("Selecione a Regional", selection: $notifyMeAbout) {
                    Text("Regional 1").tag(NotifyMeAboutType)
                    Text("Regional 2").tag(NotifyMeAboutType)
                    Text("Regional 3").tag(NotifyMeAboutType)
                    Text("Regional 4").tag(NotifyMeAboutType)
                }
            }
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
        .safeAreaInset(edge: .top, content: {
            HStack{
                Text("Adicione seu \n endereço")
                    .font(
                        Font.custom("SFProRounded-Semibold", size: 34)
                            .weight(.bold)
                    )
                    .multilineTextAlignment(.center)
            }
            .padding(.top, 12)
        })
        .safeAreaInset(edge: .top, content: {
            HStack{
                Image("calendar-blue")
                    .frame(width: 105, height: 105)
            }
            .padding(.top, 44)
            .scaledToFit()
        })
        .safeAreaInset(edge: .bottom, content: {
            HStack{
                NavigationLink(destination: RegistrationDatesView(openRegistrationSheet: $openRegistrationSheet)) {
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
                
            }.padding(.bottom, 62)
        })
//        .background(Color(uiColor: .systemGray6))
    }
}



#Preview {
        RegisterDonationView(openRegistrationSheet: .constant(true))
}
