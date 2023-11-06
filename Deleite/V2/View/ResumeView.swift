//
//  ResumeView.swift
//  Deleite
//
//  Created by Thaynara da Silva Andrade on 27/10/23.
//

import SwiftUI

struct ResumeView: View {
    var body: some View {
        NavigationView{
            ZStack(alignment: .topLeading) {
            
            Color("Text-Color")
                .edgesIgnoringSafeArea(.all)
            ScrollView (.vertical){
                VStack{
                    Text("Confira abaixo as poucas etapas que você \ndeve seguir para realizar sua doação de \nleite humano:")
                        .foregroundColor(.white)
                } .padding(.leading, -25)
                    Rectangle()
                        .frame(width: 5, height: 350)
                        .padding(.leading, -140)
                        .padding(.top,60)
                        .foregroundColor(Color("yellow-color"))
                    VStack{
                        ComponentscircleView(LoginImage: Image("Eyes"))

                    } .padding(.leading,-172)
                        .padding(.top,-390)
                    VStack{
                        ComponentscircleView(LoginImage: Image("mama"))
                    } .padding(.leading, -172)
                        .padding(.top,-290)
                    VStack{
                        ComponentscircleView(LoginImage: Image("Calendario"))
                    } .padding(.leading,-172)
                        .padding(.top,-190)
                    VStack{
                        ComponentscircleView(LoginImage: Image("car"))
                    } .padding(.leading,-172)
                        .padding(.top,-90)
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
                    
                } .padding(.top, -400)
                
                VStack (alignment: .center){
                    ButtonView(Textbutton: "Ver tutoriais", Textbutton2: "Ir para agendamentos")
                } .padding(.leading,30)
                  .padding(.trailing,30)
                  .padding(.top, -60)
                
                
                }
                
            }.navigationTitle("Resumo")

                
            
            
        }
    
    }
}

#Preview {
    ResumeView()
}
