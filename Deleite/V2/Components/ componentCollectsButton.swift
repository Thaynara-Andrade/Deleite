//
//   componentCollectsButton.swift
//  Deleite
//
//  Created by Thaynara da Silva Andrade on 11/12/23.
//

import SwiftUI

struct _componentCollectsButton: View {
    
    @State private var exibirSheet = false
    @State private var respostaEntrega: Bool? = nil

    @Binding var acceptedRequest: Bool
    
    var body: some View {
        VStack(spacing: 20){
            Text("Confirmação de solicitação")
                .foregroundColor(Color("Text"))
                .fontWeight(.bold)
            
            Text("Obrigada pela sua contribuição com o Banco de leite Humano. Você é especial para nós!")
                .foregroundColor(Color("Text"))
                .multilineTextAlignment(.center)
                .frame(width: 330, alignment: .center)
                
        
            Image(systemName: "heart.fill")
                .font(.system(size: 50))
                .foregroundColor(Color("Buttonvariable-Color"))
            
        }
    }
}

#Preview {
    _componentCollectsButton(acceptedRequest: .constant(true))
}
