//
//  ComponentRescheduleRequest.swift
//  Deleite
//
//  Created by Thaynara da Silva Andrade on 11/12/23.
//

import SwiftUI

struct ComponentRescheduleRequest: View {
    
    @State private var exibirSheet = false
    @State private var respostaEntrega3: Bool? = nil
    @State private var isContainerOptionViewPresented = false
    
    @Binding var openRegistrationSheet: Bool
    

    @Binding var noAcceptedRequest: Bool
    
    
    var body: some View {
        
            VStack (spacing: 40){
                Text("Reagendar solicitação")
                    .foregroundColor(Color("Text"))
                    .fontWeight(.bold)
                
                Text("Sentimos muito que sua solicitação não tenha sido atendida dessa vez, mas não se preocupe, você poderá realizar uma nova solicitação.")
                    .frame(width: 330, alignment: .topLeading)
                    .foregroundColor(Color("Text"))
                
                Text("Deseja reagendar agora?")
                    .fontWeight(.bold)
                    .foregroundColor(Color("Text"))
                
            }
            
        VStack{
            Button(action: {
                respostaEntrega3 = false
                isContainerOptionViewPresented = true
                // Ação quando a resposta for "Não"
            }) {
                Text("Sim, vamo lá!")
                    .fontWeight(.semibold)
                    .frame(width: 330, height: 50)
                    .background(Color("Button-Yellow"))
                    .cornerRadius(20)
                    .foregroundColor(.black)
        
        }
                .sheet(isPresented: $isContainerOptionViewPresented) {
                    ContainerOptionView(openRegistrationSheet: $openRegistrationSheet)
                        }
                
                
                Button(action: {
                    respostaEntrega3 = false
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
            .navigationBarBackButtonHidden(true)
    }
}

//#Preview {
//    ComponentRescheduleRequest(openRegistrationSheet: .constant(true))
//}
