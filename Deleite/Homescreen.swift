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
                    .foregroundColor(Color.gray)
                    .multilineTextAlignment(.leading)
                    .padding(.leading, 20)
                
                Spacer(minLength: 50)
                ScrollView(.vertical) {
                    LazyVGrid(columns: Array(repeating: GridItem(.flexible(), spacing: gridSpacing), count: columnCount), spacing: gridSpacing ) {
                        
                        Button(action: {
                            
                        }) {
                            NavigationLink(destination: DonationView()) {
                                Text("Tutoriais")
                                    .frame(width: 150, height: 150)
                                    .background(Color.gray)
                                    .foregroundColor(.white)
                                    .cornerRadius(10)
                                    .padding()
                            }
                        }
                        
                        Button(action: {
                        }) {
                            NavigationLink(destination: MilkbankView()) {
                                Text("Banco de \n Leite (MEAC)")
                                    .frame(width: 150, height: 150)
                                    .background(Color.gray)
                                    .foregroundColor(.white)
                                    .cornerRadius(10)
                    
                            }
                        }
                        
                        Button(action: {
                        }) {
                            NavigationLink(destination: SchedulingView()) {
                                Text("Agendamento")
                                    .frame(width: 150, height: 150)
                                    .background(Color.gray)
                                    .foregroundColor(.white)
                                    .cornerRadius(10)
                                   
                            }
                        }
                        
                        Button(action: {
                        }) {
                            NavigationLink(destination: QuestionsView()) {
                                Text("Perguntas frequentes")
                                    .frame(width: 150, height: 150)
                                    .background(Color.gray)
                                    .foregroundColor(.white)
                                    .cornerRadius(10)
                                    
                            }
                        }
                    }
                    .padding()
                    
                    NavigationLink(destination: DonationView()) {
                        Text("Doe Aqui")
                            .frame(width: 310, height: 50)
                            .background(Color.black)
                            .foregroundColor(.white)
                            .cornerRadius(10)
                        
                    }
                    .padding(5)
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
