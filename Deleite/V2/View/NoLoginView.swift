//
//  NologinView.swift
//  Deleite
//
//  Created by Marília de Sousa on 23/10/23.
//

import SwiftUI

struct NoLoginView: View {
    @State private var showAlert = false
    var body: some View {
        
        NavigationView{
            
            ZStack(alignment: .topLeading) {
                ScrollView {
                    VStack(alignment: .leading) {
                        HStack {
                            Image("Deleite")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 110)
                                .padding(.leading, 25)
                                .padding(.bottom, 5)
                                .padding(.top)
                            Button(action: {
                                self.showAlert = true
                            }) {
                                Image(systemName: "questionmark.circle")
                                    .font(.system(size: 24))
                                    .foregroundColor(Color("icon-color"))
                                    .padding(.leading, 195)
                                    .padding(.top, 15)
                            } .alert(isPresented: $showAlert) {
                                Alert(
                                    title: Text("Ajuda"),
                                    message: Text("Para obter suporte, entre \nem contato no botão abaixo"),
                                    primaryButton: .default(Text("Falar com Suporte"), action: {
                                        
                                        if let url = URL(string: "https://christianpaulo.com.br/deleite/") {
                                            UIApplication.shared.open(url)
                                        }
                                    }),
                                    secondaryButton: .cancel(Text("Cancelar"))
                                )
                            }
                        }
                        
                        VStack{
                            ComponentNoLoginView(Logintitle: "Seja \nDoadora", Loginname: "Cadastre-se e receba seu \ncódigo de acesso", LoginImage: Image("Peito"))
                                .padding(.bottom, 30)
                            HStack {
                                
                                Text("Caso já")
                                    .padding(.leading, -100)
                                    .padding(.leading, 75)
                                
                                
                                Text("possua seu código,")
                                    .bold()
                                    .padding(.leading, -100)
                                    .padding(.leading, 50)
                                
                                
                                Text("digite abaixo: ")
                                    .padding(.leading, -100)
                                    .padding(.leading, 95)
                                
                            }
                            
                            ComponentTextField()
                                .padding(.top, -180)
                            
                        }
                        .padding()
                    }
                }
            }
            
            .ignoresSafeArea(.keyboard, edges: .bottom)
        }
    }
}
#Preview {
    NoLoginView()
}
