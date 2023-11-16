//
//  ComponentSectionView.swift
//  Deleite
//
//  Created by Thaynara da Silva Andrade on 23/10/23.
//

import SwiftUI

struct ComponentSectionView: View {
    
    let Logintitle: String
    let LoginDate: String
    let LoginTurno: String
    let LoginImage: Image
    
    init(Logintitle: String, LoginDate: String, LoginTurno: String, LoginImage: Image) {
        self.Logintitle = Logintitle
        self.LoginDate = LoginDate
        self.LoginTurno = LoginTurno
        self.LoginImage = LoginImage
    }
    
    var body: some View {
        ZStack {
            Rectangle()
                .frame(width: 356, height: 184)
                .foregroundColor(Color.white)
                .cornerRadius(21.8898)
                .shadow(radius: 10)
                .opacity(0.5)
            VStack(alignment: .leading) {
            
                Text(Logintitle)
                    .font(
                        Font.custom("SFProRounded-Black", size: 22)
                    )
                    .multilineTextAlignment(.leading)
                    .padding(.top, -20)
                    .padding(.leading, 10)
                    .foregroundColor(Color("icon-color"))
                
                Text(LoginDate)
                    .padding(.leading, 10)
                    .padding(.top, -15)
                    .font(
                    Font.custom("SF Pro Rounded", size: 17)
                    .weight(.bold)
                    )
                    .foregroundColor(Color("icon-color"))

                Text(LoginTurno)
                    .padding(.leading, 10)
                    .padding(.top, -10)
                    .font(
                    Font.custom("SF Pro Rounded", size: 17)
                    .weight(.bold)
                    )
                    .foregroundColor(Color("icon-color"))
                
                Button(action: {
                    if let whatsappURL = URL(string: "https://tinyurl.com/DOAR-LEITE-MEAC-BLH-UFC") {
                        UIApplication.shared.open(whatsappURL)
                    }
                }) {
                        
                    Text("Como foi a coleta?")
                        .fontWeight(.semibold)
                        .frame(width: 280, height: 14)
                        .padding()
                            .background(Color("icon-color"))
                            .foregroundColor(Color.white)
                            .cornerRadius(15)
    
                } 
                .padding(.top)
                .padding(.bottom,-30)
            
                }
            ZStack {
                Image("pote")
                    .resizable()
                    .scaledToFit()
                    .frame(height: 80)
                    .padding(.leading, 230)
                    .padding(.top, -50)
                
                    
            }
            
        }
    }
}

#Preview {
    ComponentSectionView(Logintitle: "Entrega do kit", LoginDate: "27 de fevereiro", LoginTurno: "Manhã", LoginImage: Image("pote"))
}
