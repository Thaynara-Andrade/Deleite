//
//  PositiveRequestView.swift
//  Deleite
//
//  Created by Raina on 10/12/23.
//

import SwiftUI

struct PositiveRequestView: View {
    
    @Binding var exibirSheet: Bool
    @Binding var respostaEntrega: Bool? = nil
    
    var body: some View {
        Text("Sua solicitação foi atendida?")
            .fontWeight(.bold)
            .padding()
        
        VStack {
            Button(action: {
                respostaEntrega = true
                exibirSheet.toggle()
                // Ação quando a resposta for "Sim"
            }) {
                Text("Sim, foi atendida")
                    .fontWeight(.semibold)
                    .frame(width: 330, height: 50)
                    .background(Color("Button-Yellow"))
                    .cornerRadius(20)
                    .foregroundColor(.black)
            }
            .multilineTextAlignment(.center)
            
            Button(action: {
                respostaEntrega = false
                exibirSheet.toggle()
                // Ação quando a resposta for "Não"
            }) {
                Text("Não, não recebi a visita")
                    .fontWeight(.semibold)
                    .frame(width: 330, height: 50)
                    .background(Color("Gray"))
                    .cornerRadius(20)
                    .foregroundColor(.black)
            }
        }
    }
}

#Preview {
    ModelScheduling()
}
