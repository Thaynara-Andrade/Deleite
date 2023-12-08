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
    @State private var isPostLoginViewActive1 = false
    @Binding var openRegistrationSheet: Bool
    
    
    var body: some View {

            ZStack(alignment: .leading) {

                ScrollView (.vertical){
                    Group{
                        VStack(alignment: .leading, spacing: 10){
                            Text("Resumo")
                                .font(Font.custom("SFProRounded-Heavy", size: 35))
                                .multilineTextAlignment(.leading)
                                .foregroundColor(Color("icon-color"))
                            
                            Text("Confira abaixo as poucas etapas que você \ndeve seguir para realizar sua doação de \nleite humano:")
                                .multilineTextAlignment(.leading)
                                
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
                            NavigationLink(isActive: $isPostLoginViewActive1, destination: {
                                TutorialClearView(openRegistrationSheet: $openRegistrationSheet)
                                }, label: {
                                HStack(alignment: .center, spacing: 10) {
                                    Text("Ver tutoriais")
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
                            })
                        }
                        
                        HStack{
                            NavigationLink(isActive: $isPostLoginViewActive, destination: {
                                RegisterDonationView(openRegistrationSheet: $openRegistrationSheet)
                            }, label: {
                                HStack {
                                    Text("Realizar agendamento")
                                        .multilineTextAlignment(.center)
                                        .foregroundColor(Color("Text-Color"))
                                        .padding(.horizontal, 20)
                                        .padding(.vertical, 13)
                                        .frame(width: 326, alignment: .center)
                                        .cornerRadius(15)
                                        .overlay(
                                            RoundedRectangle(cornerRadius: 15)
                                                .inset(by: 1.5)
                                                .stroke(Color("Text-Color")))
                                        .onAppear {
                                            Mixpanel.mainInstance().track(event: "Fazer agendamento", properties:["ambiente": Env.string])
                                        }
                                }
                            })
                        }
                        .navigationTitle("Resumo")
                        .navigationBarTitleDisplayMode(.inline)
                        .toolbar {
                            ToolbarItem(placement: .navigationBarTrailing) {
                                Button("Cancelar") {
                                    openRegistrationSheet = false
                                }
                            }
                        }
                    }
                }
                .padding(.leading,30)
                .padding(.trailing,30)
                
            }
        }
        .navigationTitle("Resumo")
        .navigationBarTitleDisplayMode(.large)
    }
}


#Preview {
    ResumeView(openRegistrationSheet: .constant(true))
}
