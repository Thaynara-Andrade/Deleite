//
//  ComponentSectionView.swift
//  Deleite
//
//  Created by Thaynara da Silva Andrade on 23/10/23.
//

import SwiftUI

struct ComponentSectionView: View {
    
    let Logintitle: String
    let LoginDate: String
    let LoginTurno: String
    let LoginImage: Image
    
    init(Logintitle: String, LoginDate: String, LoginTurno: String, LoginImage: Image) {
        self.Logintitle = Logintitle
        self.LoginDate = LoginDate
        self.LoginTurno = LoginTurno
        self.LoginImage = LoginImage
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

            
            Image("pote")
                .resizable()
                .scaledToFit()
                .frame(height: 80)
                .padding(.leading, 230)
                .padding(.top, -50)
            
            VStack(alignment: .leading) {
                
                Text(Logintitle)
                    .font(
                        Font.custom("SFProRounded-Black", size: 22)
                    )
                    .multilineTextAlignment(.leading)
                    .padding(.top, -20)
                    .padding(.leading, 10)
                    .foregroundColor(Color("Text-Color"))
                
                Text(LoginDate)
                    .padding(.leading, 10)
                    .padding(.top, -15)
                    .font(
                        Font.custom("SF Pro Rounded", size: 17)
                            .weight(.bold)
                    )
                    .foregroundColor(Color("Text-Color"))
                
                Text(LoginTurno)
                    .padding(.leading, 10)
                    .padding(.top, -10)
                    .font(
                        Font.custom("SF Pro Rounded", size: 17)
                            .weight(.bold)
                    )
                    .foregroundColor(Color("Text-Color"))
                
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
                    .padding(.top)
                    .padding(.bottom, -30)
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
    ComponentSectionView(Logintitle: "Entrega do kit", LoginDate: "27 de fevereiro", LoginTurno: "Manhã", LoginImage: Image("pote"))
}
