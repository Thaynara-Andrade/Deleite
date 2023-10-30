//
//  ComponentTextFiel.swift
//  Deleite
//
//  Created by Marília de Sousa on 30/10/23.
//

import SwiftUI

struct ComponentTextFiel: View {
    @State private var text = ""
    
    var body: some View {
        
        HStack{
            
            TextField("Senha", text: $text)
                .textFieldStyle(PlainTextFieldStyle())
                .background(
                    Rectangle()
                        .frame(width: 350, height: 55)
                        .foregroundColor(.white)
                        .cornerRadius(14.0)
                )
                .padding()
                .textFieldStyle(.roundedBorder)
                .overlay(
                    Button(action: {
                        print("Recebido")
                    }) {
                        HStack {
                            VStack {
                                Rectangle()
                                Image(systemName: "greaterthan")
                                    .font(.bold(.title3)())
                            
                                    .frame(width: 60, height: 55)
                                    .padding([.leading, .bottom], 0.0)
                                    .foregroundColor((Color.white))
                                    .background((Color(red: 0.95, green: 0.87, blue: 0.62)))
                                    .cornerRadius(14.0)
                                
                            }
                        }
                    }
                        .padding(.leading, 290)
                        .padding(.top, -8)
                        
                    
                )
        }
    
        
    }
}

#Preview {
    ComponentTextFiel()
}
