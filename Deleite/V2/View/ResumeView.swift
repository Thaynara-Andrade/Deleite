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
    @Binding var openRegistrationSheet: Bool
    
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
                            HStack{
                                NavigationLink(destination: TutorialClearView()) {
                                    HStack(alignment: .center, spacing: 10) {
                                        Text("1")
                                            .bold()
                                            .multilineTextAlignment(.center)
                                            .foregroundColor(Color("Text-Color"))
                                            .onAppear {
                                                Mixpanel.mainInstance().track(event: "Ver tutorial", properties:["ambiente": Env.string])
                                            }
                                        
                                    }
                                    .padding(.horizontal, 20)
                                    .padding(.vertical, 13)
                                    .frame(width: 326, alignment: .center)
                                    .background(Color(red: 0.95, green: 0.87, blue: 0.62))
                                    .cornerRadius(15)
                                }.padding(.top, 65)
                            }
                            
                            HStack{
                                NavigationLink(isActive: $isPostLoginViewActive) {
                                    RegisterDonationView(openRegistrationSheet: $openRegistrationSheet)
                                } label: {
                                    HStack(alignment: .center, spacing: 10) {
                                        Text("2")
                                            .multilineTextAlignment(.center)
                                            .foregroundColor(Color("Text-Color"))
                                        
                                    }
                                    .padding(.horizontal, 20)
                                    .padding(.vertical, 13)
                                    .frame(width: 326, alignment: .center)
                                    .cornerRadius(15)
                                    .overlay(
                                        RoundedRectangle(cornerRadius: 15)
                                            .inset(by: 1.5)
                                            .stroke(Color("Text-Color")))
                                    .onAppear {
                                        Mixpanel.mainInstance().track(event: "Ir para agendamento", properties:["ambiente": Env.string])
                                    }
                                }
                            }
                        }
                        .padding(.leading,30)
                        .padding(.trailing,30)
                        .padding(.top, -60)
                    }
                }
            } .navigationTitle("Resumo")
            .navigationBarTitleDisplayMode(.large)
    }
}
#Preview {
    NavigationView{
        ResumeView(openRegistrationSheet: .constant(true))
    }
}
