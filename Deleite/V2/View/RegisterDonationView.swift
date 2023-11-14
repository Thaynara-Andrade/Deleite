//
//  RegisterDonationView.swift
//  Deleite
//
//  Created by Raina on 06/11/23.
//

import SwiftUI

struct RegisterDonationView: View {
    
    @Environment(\.dismiss) var dismiss
    @State var notifyMeAbout:Bool = false
    @State var NotifyMeAboutType:Bool = false
    @State var shownextPageRegister:Bool = true
    @State var showNextPageRegisterDate:Bool = false
    @State var name:String = ""
    @State var cep:String = ""
    
    var body: some View {
        NavigationView{
            Form{
                Section(header: Text("Informações Pessoais")) {
                    TextField("Nome", text: $name)
                    /* Isso mudar a cor da caixa de texto
                     .listRowBackground(Color.red) */
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
            /* Isso mudar a cor dae fundo no iOS 16
            .scrollContentBackground(.hidden)
            .background(.red) */
            .navigationTitle("Agendamento")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button("Cancelar") {
                        dismiss()
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
                ComponentButtonSavedView()
                    .padding(.bottom, 62)
            })
        }
    }
}

#Preview {
    RegisterDonationView()
}
