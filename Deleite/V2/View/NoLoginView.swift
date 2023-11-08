//
//  NologinView.swift
//  Deleite
//
//  Created by Marília de Sousa on 23/10/23.
//

import SwiftUI

struct NoLoginView: View {
    
    var body: some View {
       
        NavigationView{
            
            ZStack(alignment: .topLeading) {
                Color("Text-Color")
                    .edgesIgnoringSafeArea(.all)
                
                ScrollView {
                    VStack(alignment: .leading) {
                        HStack {
                            Image("Deleite")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 110)
                                .padding(.leading, 20)
                                .padding(.bottom, 5)
                                .padding(.top)
                            
                            Image(systemName: "info.circle")
                                .font(.system(size: 25))
                                .foregroundColor(.white)
                                .padding(.leading, 200)
                        }
//                        
//                        Text("Seja bem vinda!")
//                            .padding(.leading, 20)
//                            .foregroundColor(.white)
                        
                        VStack{
                            ComponentNoLoginView(Logintitle: "Seja \nDoadora", Loginname: "Faça seu cadastro aqui", LoginImage: Image("peito1"))
                                .padding(.bottom, 30)
                            
                            Text("Já tem cadastro? Digite seu código aqui.")
                                .padding(.leading, -100)
                                .padding(.leading, 60)
                                .foregroundColor(.white)
                            
                            ComponentTextField()
                            
                            Text("Agendamentos")
                                .font(.system(size: 25))
                                .fontWeight(.heavy)
                                .foregroundColor(.white)
                                .padding(.leading, -160)
                                .padding(.top)
                                .padding(.bottom, 3)
                            
                            VStack (alignment: .center){
                                ComponentEmpytState(LoginImage:
                                                        Image(systemName: "calendar.badge.plus"), Loginname: "Ainda não há agendamentos")
                                .frame(height: 180)
                            }
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
