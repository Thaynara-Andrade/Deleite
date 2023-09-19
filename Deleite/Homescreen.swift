//
//  Homescreen.swift
//  Deleite
//
//  Created by Thaynara da Silva Andrade on 11/09/23.
//

import SwiftUI

struct Homescreen: View {
    //@State private var userName = "Thaynara"
    let gridSpacingh: CGFloat = 13
    let gridSpacingv: CGFloat = -10
    let columnCount: Int = 2
    @State private var showWebView = false

    
    
    var body: some View {
        NavigationView {
            VStack(alignment: .leading) {
                Text("Seja bem vinda, ao Deleite!")
                    .font(.title3)
                    .foregroundColor(Color.gray)
                    .multilineTextAlignment(.leading)
                    .padding(.leading, 15)
                
                ScrollView(.vertical) {
                    LazyVGrid(columns: Array(repeating: GridItem(.flexible(), spacing: gridSpacingv), count: columnCount), spacing: gridSpacingh ) {
                        
                        
                        Button(action: {
                            
                        }) {
                            NavigationLink(destination: MilkBanckView()) {
                                ZStack{
                                Text("Banco de \nleite")
                                    .font(.title3)
                                    .fontWeight(.heavy)
                                    .multilineTextAlignment(.leading)
                                    .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                                    .padding(.leading, 20)
                                    .padding(.top, -80)
                                    .frame(width: 160, height: 210)
                                    .background(Color("Button-Color"))
                                    .foregroundColor(.white)
                                    .cornerRadius(15)
                                    
                                    
                                    Image("Hospital")
                                        .padding(.top, 133.4)
                                }
                                    
                
                            }
                        }
                        
                        Button(action: {
                        }) {
                            NavigationLink(destination: TutorialView()) {
                                Text("Tutorial")
                                    .font(.title3)
                                    .fontWeight(.heavy)
                                    .multilineTextAlignment(.leading)
                                    .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                                    .padding(.leading, 20)
                                    .padding(.top, -80)
                                    .frame(width: 160, height: 210)
                                    .background(Color("Buttonvariable-Color"))
                                    .foregroundColor(Color("Text-Color"))
                                    .cornerRadius(15)
                    
                            }
                        }
                        
                        Button(action: {
                        }) {
                            NavigationLink(destination: QuestionsView()) {
                                Text("Perguntas frequentes")
                                    .font(.title3)
                                    .fontWeight(.heavy)
                                    .multilineTextAlignment(.leading)
                                    .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                                    .padding(.leading, 20)
                                    .padding(.top, -80)
                                    .frame(width: 160, height: 210)
                                    .background(Color("Buttonvariable-Color"))
                                    .foregroundColor(Color("Text-Color"))
                                    .cornerRadius(15)
                                   
                            }
                        }
                        
                        Button(action: {
                        }) {
                            NavigationLink(destination: SchedulingView()) {
                                Text("Agendar \nColeta")
                                    .font(.title3)
                                    .fontWeight(.heavy)
                                    .multilineTextAlignment(.leading)
                                    .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                                    .padding(.leading, 20)
                                    .padding(.top, -80)
                                    .frame(width: 160, height: 210)
                                    .background(Color("Button-Color"))
                                    .foregroundColor(.white)
                                    .cornerRadius(15)
                                    
                            }
                        }
                    }
                    .padding()
                    
                    NavigationLink("", destination: WebView(urlString: "https://wa.me/message/O2WSGGAHTPI7G1"), isActive: $showWebView)

                    Button(action: {
                                showWebView = true
                            }) {
                                VStack(alignment: .leading) {
                                    Text("Doe Aqui")
                                        .font(.largeTitle)
                                        .fontWeight(.heavy)
                                        .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                                        .frame(width: 320, height: 140)
                                        .padding(.leading, 20)
                                        .background(Color("Text-Color"))
                                        .foregroundColor(.white)
                                        .cornerRadius(15)
                                    
                                }
                        
                    }
                    .padding(-17)
                    
                }
                
            }
            .navigationTitle("Menu inicial")
        }
    }
}

struct DonationView: View {
    var body: some View {
        Text("Esta é a tela de doação.")
            .font(.title)
    }
}

struct Homescreen_Previews: PreviewProvider {
    static var previews: some View {
        Homescreen()
    }
}
