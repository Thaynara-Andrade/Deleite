//
//  Homescreen.swift
//  Deleite
//
//  Created by Thaynara da Silva Andrade on 11/09/23.
//

import SwiftUI

struct Homescreen: View {
    //@State private var userName = "Thaynara"
    let gridSpacing: CGFloat = -30
    let columnCount: Int = 2
    
    
    var body: some View {
        NavigationView {
            VStack(alignment: .leading) {
                Text("Seja bem vinda, ao Deleite!")
                    .font(.title3)
                    .foregroundColor(Color.gray)
                    .multilineTextAlignment(.leading)
                    .padding(.leading, 20)
                
                //Spacer(minLength: 50)
                ScrollView(.vertical) {
                    LazyVGrid(columns: Array(repeating: GridItem(.flexible(), spacing: gridSpacing), count: columnCount), spacing: gridSpacing ) {
                        
                        Button(action: {
                            
                        }) {
                            NavigationLink(destination: TutorialView()) {
                                Text("Banco de \nleite")
                                    .font(.title3)
                                    .fontWeight(.heavy)
                                    .multilineTextAlignment(.leading)
                                    .frame(width: 150, height: 207)
                                    .background(Color("Button-Color"))
                                    .foregroundColor(.white)
                                    .cornerRadius(15)
                                    .padding()
                                    .shadow(radius: 2, x: 2, y:2)
                                    
                
                            }
                        }
                        
                        Button(action: {
                        }) {
                            NavigationLink(destination: MilkBanckView()) {
                                Text("Tutorial")
                                    .font(.title3)
                                    .fontWeight(.heavy)
                                    .multilineTextAlignment(.leading)
                                    .frame(width: 150, height: 207)
                                    .background(Color("Buttonvariable-Color"))
                                    .foregroundColor(Color("Text-Color"))
                                    .cornerRadius(15)
                                    .shadow(radius: 2, x: 2, y:2)
                    
                            }
                        }
                        
                        Button(action: {
                        }) {
                            NavigationLink(destination: SchedulingView()) {
                                Text("Perguntas frequentes")
                                    .font(.title3)
                                    .fontWeight(.heavy)
                                    .frame(width: 150, height: 207)
                                    .background(Color("Buttonvariable-Color"))
                                    .foregroundColor(Color("Text-Color"))
                                    .cornerRadius(15)
                                    .shadow(radius: 2, x: 2, y:2)
                                   
                            }
                        }
                        
                        Button(action: {
                        }) {
                            NavigationLink(destination: QuestionsView()) {
                                Text("Agendar \nColeta")
                                    .font(.title3)
                                    .fontWeight(.heavy)
                                    .multilineTextAlignment(.leading)
                                    .frame(width: 150, height: 207)
                                    .background(Color("Button-Color"))
                                    .foregroundColor(.white)
                                    .cornerRadius(15)
                                    .shadow(radius: 2, x: 2, y:2)
                                
                                    
                            }
                        }
                    }
                    .padding()
                    
                    NavigationLink(destination: DonationView()) {
                        Text("Doe Aqui")
                            .font(.title)
                            .fontWeight(.heavy)
                            .frame(width: 316, height: 140)
                            .background(Color("Button-Color"))
                            .foregroundColor(.white)
                            .cornerRadius(15)
                            .shadow(radius: 2, x: 2, y:2)
                        
                    }
                    .padding(-8)
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
