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
                    Text("Confira abaixo as poucas etapas que você \ndeve seguir para realizar sua doação de leite humano:")
                        .foregroundColor(.white)
                } .padding(.leading)
                    Rectangle()
                        .frame(width: 5, height: 350)
                        .padding(.leading, -120)
                        .padding(.top,80)
                        .foregroundColor(Color("yellow-color"))
                    VStack{
                        ComponentscircleView(LoginImage: Image("Eyes"))
                    } .padding(.leading,-148)
                        .padding(.top,-390)
                    VStack{
                        ComponentscircleView(LoginImage: Image("mama"))
                    } .padding(.leading, -148)
                        .padding(.top,-290)
                    VStack{
                        ComponentscircleView(LoginImage: Image("Calendario"))
                    } .padding(.leading,-148)
                        .padding(.top,-190)
                    VStack{
                        ComponentscircleView(LoginImage: Image("car"))
                    } .padding(.leading,-148)
                        .padding(.top,-90)
                }
            }.navigationTitle("Resumo")
        }
    }
}

#Preview {
    ResumeView()
}
