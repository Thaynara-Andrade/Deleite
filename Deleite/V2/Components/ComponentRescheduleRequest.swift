//
//  ComponentRescheduleRequest.swift
//  Deleite
//
//  Created by Thaynara da Silva Andrade on 11/12/23.
//

import SwiftUI

struct ComponentRescheduleRequest: View {
    
    @State private var exibirSheet = false
    @State private var respostaEntrega: Bool? = nil
    

    @Binding var noAcceptedRequest: Bool
    
    
    var body: some View {
        
            VStack (spacing: 40){
                Text("Reagendar solicitação")
                    .foregroundColor(Color("Text"))
                    .fontWeight(.bold)
                
                Text("Sentimos muito que sua solicitação não tenha sido atendida dessa vez, mas não se preocupe, você poderá realizar uma nova solicitação.")
                    .frame(width: 330, alignment: .topLeading)
                
                Text("Deseja reagendar agora?")
                    .fontWeight(.bold)
                
            }
            
            VStack{
                Button(action: {
                    respostaEntrega = true
                    exibirSheet.toggle()
                    // Ação quando a resposta for "Sim"
                }) {
                    Text("Sim, vamo lá!")
                        .fontWeight(.semibold)
                        .frame(width: 330, height: 50)
                        .background(Color("Button-Yellow"))
                        .cornerRadius(20)
                        .foregroundColor(.black)
                    
                }
                .multilineTextAlignment(.center)
                
                Button(action: {
                    respostaEntrega = false
                   // isPresented.toggle()
                    // Ação quando a resposta for "Não"
                }) {
                    Text("Não, farei depois")
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
    ComponentRescheduleRequest(noAcceptedRequest: .constant(true))
}
