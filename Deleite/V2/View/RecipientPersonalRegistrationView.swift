//
//  RecipientPersonalRegistrationView.swift
//  Deleite
//
//  Created by Raina on 14/11/23.
//

import SwiftUI
import Combine

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
    @State private var showAlert: Bool = false
    
    
    var body: some View {
        Form{
            
            Section(footer:
                        HStack(alignment: .center){
                Image("calendar-blue")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 105, height: 105)
            }
                .padding(.leading, 104)
            ){}
            
            
            Section(footer:
                        HStack(alignment: .center){
                Text("Adicione seu \n endereço")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .foregroundColor(Color.black)
                    .multilineTextAlignment(.center)
            }
                .padding(.leading,44)
            ){}
            
            Section() {
                TextField("Nome", text: $name)
                    .multilineTextAlignment(.leading)
                TextField("CEP", text: $cep)
                    .multilineTextAlignment(.leading)
                    .keyboardType(.numberPad)
                    .onReceive(Just(cep)) { newNumber in
                        let filtered = newNumber.filter { "0123456789".contains($0) }
                        if filtered != newNumber {
                            self.cep = filtered
                        }
                        
                        // Ensure that cep contains only 6 digits
                        if cep.count > 6 {
                            cep = String(cep.prefix(6))
                        }
                    }
            }
            Section() {
                Picker("Selecione a Regional", selection: $RecipientRegional) {
                    Text("Regional 1").tag(regionOne)
                    Text("Regional 2").tag(regionTwo)
                    Text("Regional 3").tag(regionThree)
                    Text("Regional 4").tag(regionFour)
                }
            }
            Section(footer: VStack {
                NavigationLink(destination: RecipientRegistrationView(openRegistrationSheet: $openRegistrationSheet), isActive: $SaveRecordWithoutContainer) {
                    EmptyView()
                }
            
                Button(action: {
                    if isValidForm() {
                        SaveRecordWithoutContainer = true
                    } else {
                        showAlert = true
                    }
                }) {
                    HStack(alignment: .center, spacing: 10) {
                        Text("Seguinte")
                            .fontWeight(.semibold)
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
                .alert(isPresented: $showAlert) {
                    Alert(title: Text("Campos de nome, CEP ou regional não preenchidos"), message: Text("Por favor, preencha todos os campos obrigatórios."), dismissButton: .default(Text("OK")))
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
    private func isValidForm() -> Bool {
        // Adicione lógica de validação aqui
        return !name.isEmpty && !cep.isEmpty
    }
}

#Preview {
    RecipientPersonalRegistrationView(openRegistrationSheet: .constant(true))
}
