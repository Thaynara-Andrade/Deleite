//
//  ComponentTextFiel.swift
//  Deleite
//
//  Created by Marília de Sousa on 30/10/23.
//

import SwiftUI

struct ComponentTextField: View {
    @State private var password: String = ""
    @FocusState private var passwordIsFocused: Bool
    @State private var isLogged: Bool = false
    @State private var showErrorMessage = false
    
    var body: some View {
        
        HStack{
            VStack{
                TextField("Digite o código", text: $password)
                    .textFieldStyle(PlainTextFieldStyle())
                    .padding(.leading)
                    .focused($passwordIsFocused)
                    .background(
                        Rectangle()
                            .frame(width: 350, height: 55)
                            .foregroundColor(Color.gray.opacity(0.2))
                            .cornerRadius(15)
                    )
                    .padding()
                    .textFieldStyle(.roundedBorder)
                
                VStack {
                    Button(action: {
                        if (password == "001") {
                            isLogged = true
                        } else {
                            showErrorMessage = true
                        }
                        passwordIsFocused = false
                    }) {
                        
                        Text("Entrar")
                            .fontWeight(.semibold)
                            .frame(width: 280, height: 14)
                            .padding()
                            .background(Color("Text-Color"))
                            .foregroundColor(Color.white)
                            .cornerRadius(15)
                            .padding(.top, 25)
                    }
                }
            }
        }
        
        .padding(.top, 180)
        .alert(isPresented: $showErrorMessage) {
            Alert(title: Text("Erro"), message: Text("Por favor, tente novamente."), dismissButton: .default(Text("Ok")))
        }
        
        .fullScreenCover(isPresented: $isLogged) {
            PostloginView()
        }
        
    }
}


#Preview {
    ComponentTextField()
}
