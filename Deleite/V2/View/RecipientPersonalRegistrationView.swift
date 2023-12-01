//
//  RecipientPersonalRegistrationView.swift
//  Deleite
//
//  Created by Raina on 14/11/23.
//

import SwiftUI

struct RecipientPersonalRegistrationView: View {
    
    @State private var SaveRecordWithoutContainer:Bool = false
    @Binding var openRegistrationSheet: Bool
    
    @Environment(\.dismiss) var dismiss
    @State private var name:String = ""
    @State private var cep:String = ""
    @State private var RecipientRegional:Bool = false
    @State private var regionOne:Bool = false
    @State private var regionTwo:Bool = false
    @State private var regionThree:Bool = false
    @State private var regionFour:Bool = false
    
    var body: some View {
        Form{
            
            Section(footer:
                        HStack(alignment: .center){
                Image("calendar-blue")
                    .frame(width: 105, height: 105)
            }
                .padding(.leading, 109)
                    
            ){}
            
            
            Section(footer:
                        HStack(alignment: .center){
                Text("Adicione seu \n endereço")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .multilineTextAlignment(.center)
            }
                .padding(.leading, 59)
            ){}
            
            Section() {
                TextField("Nome", text: $name)
                    .multilineTextAlignment(.leading)
                TextField("CEP", text: $cep)
                    .multilineTextAlignment(.leading)
            }
            Section() {
                Picker("Selecione a Regional", selection: $RecipientRegional) {
                    Text("Regional 1").tag(regionOne)
                    Text("Regional 2").tag(regionTwo)
                    Text("Regional 3").tag(regionThree)
                    Text("Regional 4").tag(regionFour)
                }
            }
            
            Section(footer:
                        VStack {
                NavigationLink(isActive: $SaveRecordWithoutContainer) {
                    RecipientRegistrationView(openRegistrationSheet: $openRegistrationSheet)
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
            }
                .padding(.top, 100)
            ) {}
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
    
}

#Preview {
    RecipientPersonalRegistrationView(openRegistrationSheet: .constant(true))
}
