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
            
            TextField("Digite o código", text: $password)
                .textFieldStyle(PlainTextFieldStyle())
                .padding(.leading)
                .foregroundColor(Color.black)
                .focused($passwordIsFocused)
                .background(
                    Rectangle()
                        .frame(width: 350, height: 55)
                        .foregroundColor(Color.gray.opacity(0.2))
                        .cornerRadius(14.0)
                )
                .padding()
                .textFieldStyle(.roundedBorder)
                .overlay(
                    Button(action: {
                        if (password == "001") {
                            isLogged = true
                        } else {
                            showErrorMessage = true
                        }
                        passwordIsFocused = false
                    }) {
                        HStack {
                            VStack {
                                Rectangle()
                                Image("seta")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 12)
                                    .frame(width: 60, height: 55)
                                    .padding([.leading, .bottom], 0.0)
                                    .foregroundColor((Color.white))
                                    .background(Color("icon-color"))
                                    .cornerRadius(14.0)
                                
                            }
                        }
                    }
                        .alert(isPresented: $showErrorMessage) {
                            Alert(title: Text("Erro"), message: Text("Por favor, tente novamente."), dismissButton: .default(Text("Ok")))
                        }
                        .fullScreenCover(isPresented: $isLogged) {
                            PostloginView()
                        }
                        .padding(.leading, 290)
                        .padding(.top, -8)
                        
                    
                )
        }
    
        
    }
}

#Preview {
    ComponentTextField()
}
