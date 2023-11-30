//
//  CardAgendadoLeite.swift
//  Deleite
//
//  Created by Marília de Sousa on 30/11/23.
//

import SwiftUI

struct CardAgendadoLeiteView: View {
        
        let cardTitle: String
        let cardTitle2: String
        let cardTitle3: String
        let cardImage: Image
        let cardImage2: Image
        
    init(cardTitle: String, cardTitle2: String, cardTitle3: String, cardImage: Image, cardImage2: Image) {
            self.cardTitle = cardTitle
            self.cardTitle2 = cardTitle2
            self.cardTitle3 = cardTitle3
            self.cardImage = cardImage
            self.cardImage2 = cardImage2
    }
    
    @State private var exibirSheet = false
    @State private var respostaEntrega: Bool? = nil
    
    var body: some View {
        ZStack {
            Rectangle()
                .frame(width: 356, height: 184)
                .foregroundColor(Color.white)
                .background(.white)
                .cornerRadius(21.8898)
                .shadow(radius: 3)
            
            Image("poteLeite")
                
                .frame(width: 47, height: 71)
                .padding(.leading, 260)
                .padding(.top, -60)
               
            
            VStack(alignment: .leading) {
                
                Text(cardTitle)
                    .font(
                        Font.custom("SFProRounded-Black", size: 22)
                    )
                    .multilineTextAlignment(.leading)
                    .foregroundColor(Color("Text-Color"))
                
                Text(cardTitle2)
                    .padding(.top, -5)
                    .font(.system(size: 17))
                
                HStack {
                    cardImage2
                        .resizable()
                        .scaledToFit()
                        .foregroundColor(Color("Text-Color"))
                        .frame(width: 16)
                    
                    Text(cardTitle3)
                        .font(.system(size: 17))
                }
                  
                VStack {
                    Button(action: {
                        exibirSheet.toggle()
                    }) {
                        Text("Como foi a coleta?")
                            .fontWeight(.semibold)
                            .frame(width: 280, height: 14)
                            .padding()
                            .background(Color("Button-Yellow"))
                            .foregroundColor(Color("Text-Color"))
                            .cornerRadius(15)
                    }
                }
                .sheet(isPresented: $exibirSheet) {
                    VStack {
                        Text("A coleta foi entregue?")
                            .fontWeight(.semibold)
                            .padding()
                        
                        HStack {
                            Button("Sim"){
                                respostaEntrega = true
                                exibirSheet.toggle()
                                // Faça o que precisa ser feito quando a resposta for "Sim"
                            }
                            .padding()
                            
                            Button("Não") {
                                respostaEntrega = false
                                exibirSheet.toggle()
                                // Faça o que precisa ser feito quando a resposta for "Não"
                            }
                            .padding()
                                        
                        }
                    }
                }
            }
        }
    }
}
#Preview {
    CardAgendadoLeiteView(cardTitle: "Entrega do leite", cardTitle2: "09 de maio de 2023", cardTitle3: "Solicitação Agendada", cardImage: Image(""), cardImage2: Image(systemName: "clock.fill"))
}
