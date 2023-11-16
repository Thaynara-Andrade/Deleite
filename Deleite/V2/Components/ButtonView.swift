//
//  ButtonView.swift
//  Deleite
//
//  Created by Thaynara da Silva Andrade on 06/11/23.
//

import SwiftUI
import Mixpanel

struct ButtonView: View {
    let Textbutton: String
    let Textbutton2: String
    @State private var isPostLoginViewActive = false
    
    init(Textbutton: String, Textbutton2: String) {
        self.Textbutton = Textbutton
        self.Textbutton2 = Textbutton2
    }
    var body: some View {
        
        NavigationLink(destination: TutorialClearView()) {
            HStack(alignment: .center, spacing: 10) {
                Text(Textbutton)
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
        
        Button(action: {
            isPostLoginViewActive = true })
        {
            HStack(alignment: .center, spacing: 10) {
                Text(Textbutton2)
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
                Mixpanel.mainInstance().track(event: "Ir para agendamento", properties:["ambiente": Env.string]) }
            
        } .fullScreenCover(isPresented: $isPostLoginViewActive) {
            RegisterDonationView()
        }
    }
}

#Preview {
    ButtonView(Textbutton: "Já tenho frasco de vidro", Textbutton2: "Não tenho frasco")
}
