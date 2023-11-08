//
//  RegistrationDatesView.swift
//  Deleite
//
//  Created by Raina on 08/11/23.
//

import SwiftUI

struct RegistrationDatesView: View {
    
    @State var ShowRegistrationConfirmation:Bool = false
    @State var name:String = ""
    @State var cep:String = ""
    
    var body: some View {
        NavigationView{
            Form{
                Section(header: Text("Datas referente a doação")) {
                    TextField("Nome", text: $name)
                    TextField("CEP", text: $cep)
                    
                }
                
                Text("Texto explicando para a usuária o limite de dias que o leite pode ficar na geladeira.Texto explicando para a usuária.")
            }
            .navigationTitle("Agendamento")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button("Cancelar") {
                        print("Cancelar tapped!")
                        ShowRegistrationConfirmation = false
                    }
                }
                ToolbarItem(placement: .navigationBarLeading){
                    Button("Voltar") {
                        print("Voltar tapped!")
                    }
                }
            }
            .safeAreaInset(edge: .bottom, content: {
                ComponetButtonConfirmRegistreView()
                .padding(.bottom, 54)
            })
        }
    }
}

#Preview {
    RegistrationDatesView()
}
