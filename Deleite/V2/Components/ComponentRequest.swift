//
//  ComponentRequest.swift
//  Deleite
//
//  Created by Thaynara da Silva Andrade on 11/12/23.
//

import SwiftUI

struct ComponentRequest: View {
   
    
    @State private var exibirSheet = false
    @State private var respostaEntrega: Bool? = nil
    
    @State private var exibirSheet2 = false
    @State private var respostaEntrega2: Bool? = nil
    
    @State private var nextSheet: Bool = false
    @State private var acceptedRequest: Bool = false
    
    @State private var nextSheet2: Bool = false
    @State private var noAcceptedRequest: Bool = false
    
    @Binding var openRegistrationSheet: Bool
    
    var body: some View {
        NavigationView {
            VStack {
                Text("Sua solicitação foi atendida?")
                    .foregroundColor(Color("Text"))
                    .fontWeight(.bold)
                    .padding()
                
                NavigationLink(
                    destination: _componentCollectsButton(acceptedRequest: $acceptedRequest),
                    isActive: $nextSheet
                ) {
                    EmptyView()
                }
                .hidden()
                
                Button(action: {
                    respostaEntrega = false
                    nextSheet = true
                    // Ação quando a resposta for "Não"
                }) {
                    Text("Sim, foi atendida")
                        .fontWeight(.semibold)
                        .frame(width: 330, height: 50)
                        .background(Color("Button-Yellow"))
                        .cornerRadius(20)
                        .foregroundColor(.black)
                        .padding()
                }

                
                        NavigationLink(
                            destination: ComponentRescheduleRequest(openRegistrationSheet: $openRegistrationSheet, noAcceptedRequest: $noAcceptedRequest),
                            isActive: $nextSheet2
                        ) {
                            EmptyView()
                        }
                        .hidden()
                        
                        Button(action: {
                            respostaEntrega2 = false
                            nextSheet2 = true
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
                    .multilineTextAlignment(.center)
                
            }
        }
    }

//
//#Preview {
//    ComponentRequest()
//}
