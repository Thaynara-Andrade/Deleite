//
//  ResumeView.swift
//  Deleite
//
//  Created by Thaynara da Silva Andrade on 27/10/23.
//

import SwiftUI
import Mixpanel

struct ResumeView: View {
    @State private var isPostLoginViewActive = false
    
    var body: some View {
    
            ZStack(alignment: .leading) {
               
                ScrollView (.vertical){
                    Group{
                        VStack{
                            Text("Confira abaixo as poucas etapas que você \ndeve seguir para realizar sua doação de \nleite humano:")
                                
                        } .padding(.leading, -25)
                        Rectangle()
                            .frame(width: 5, height: 350)
                            .padding(.leading, -140)
                            .padding(.top, 20)
                            .foregroundColor(Color("yellow-color"))
                        VStack {
                            ComponentscircleView(
                                LoginImage: Image("Eyes"))
                            .padding(.top,-20)
                        
                            ComponentscircleView(
                                LoginImage: Image("mama"))
                            .padding(.top,30)
                            
                            ComponentscircleView(
                                LoginImage: Image("Calendario"))
                            .padding(.top,30)
                            
                            ComponentscircleView(
                                LoginImage: Image("car"))
                            .padding(.top,30)
                            
                        }.padding(.leading,-172)
                            .padding(.top,-350)
                        
                        VStack(alignment: .leading){
                            Text("Ver tutoriais")
                                .bold()
                                .padding(.bottom,82)
                            
                            Text("Retirada do leite")
                                .bold()
                                .padding(.bottom,82)
                            
                            Text("Agendamento")
                                .bold()
                                .padding(.bottom,82)
                            
                            Text("Coleta realizada")
                                .bold()
                                .padding(.bottom,50)
                            
                        } .padding(.top, -380)
                        
                        
                        
                        VStack (alignment: .center){
                            ButtonView(Textbutton: "Ver tutoriais", Textbutton2: "Ir para agendamentos")
                        } .padding(.leading,30)
                            .padding(.trailing,30)
                            .padding(.top, -60)
                    }
                    
                }
            } .navigationTitle("Resumo")
            .navigationBarTitleDisplayMode(.large)
        
    }
}

#Preview {
    ResumeView()
}
