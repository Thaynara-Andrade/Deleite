//
//  RecipientPersonalRegistrationView.swift
//  Deleite
//
//  Created by Raina on 14/11/23.
//

import SwiftUI

struct RecipientPersonalRegistrationView: View {
    
    @Environment(\.dismiss) var dismiss
    @State var name:String = ""
    @State var cep:String = ""
    @State var RecipientRegional:Bool = false
    @State var regionOne:Bool = false
    @State var regionTwo:Bool = false
    @State var regionThree:Bool = false
    @State var regionFour:Bool = false
    @State var SaveRecordWithoutContainer:Bool = false
    
    var body: some View {
        NavigationView{
            Form{
                Section(header: Text("Informações Pessoais")) {
                    TextField("Nome", text: $name)
                    TextField("CEP", text: $cep)
                }
                Section(header: Text("Regional")) {
                    Picker("Selecione a Regional", selection: $RecipientRegional) {
                        Text("Regional 1").tag(regionOne)
                        Text("Regional 2").tag(regionTwo)
                        Text("Regional 3").tag(regionThree)
                        Text("Regional 4").tag(regionFour)
                    }
                }
            }
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
                HStack(){
                    Button {
                        SaveRecordWithoutContainer = true
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
                    .sheet(isPresented: $SaveRecordWithoutContainer, onDismiss: nil) {
                       RecipientRegistrationView()
                    }
                }
                .padding(.bottom, 62)
            })
        }
    }

}

#Preview {
    RecipientPersonalRegistrationView()
}
