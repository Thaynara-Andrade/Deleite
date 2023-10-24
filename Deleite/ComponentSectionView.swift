//
//  ComponentSectionView.swift
//  Deleite
//
//  Created by Thaynara da Silva Andrade on 23/10/23.
//

import SwiftUI

struct ComponentSectionView: View {
    
    @State private var isToggled = false
    let Logintitle: String
    let Loginname: String
    let LoginDate: String
    let LoginEndereco: String
    let LoginRegional: String
    let LoginImage: Image
    
    init(Logintitle: String, Loginname: String, LoginDate: String, LoginEndereco: String, LoginRegional: String, LoginImage: Image) {
        self.Logintitle = Logintitle
        self.Loginname = Loginname
        self.LoginDate = LoginDate
        self.LoginEndereco = LoginEndereco
        self.LoginRegional = LoginRegional
        self.LoginImage = LoginImage
    }
    
    var body: some View {
        ZStack {
            Rectangle()
                .frame(width: 350, height: 180)
                .foregroundColor(Color("Buttonvariable-Color"))
                .cornerRadius(21.8898)
            VStack{
            
                Text(Logintitle)
                    .font(
                        Font.custom("SFProRounded-Black", size: 30)
                    )
                    .multilineTextAlignment(.leading)
                    .padding([.top], -2)
                    .padding([.leading], -90)
                    .foregroundColor(Color("Text-Color"))
                Text(Loginname)
                    .padding(.leading, -117)
                    .font(
                        Font.custom("SFProRounded-Medium", size: 14)
                    )
                    .foregroundColor(Color("Text-Color"))
                Text(LoginDate)
                    .padding(.leading, -145)
                    .font(
                        Font.custom("SFProRounded-Medium", size: 14)
                    )
                    .foregroundColor(Color("Text-Color"))
                Text(LoginEndereco)
                    .padding(.leading, -117)
                    .font(
                        Font.custom("SFProRounded-Medium", size: 14)
                    )
                    .foregroundColor(Color("Text-Color"))
                Text(LoginRegional)
                    .padding(.leading, -145)
                    .font(
                        Font.custom("SFProRounded-Medium", size: 14)
                    )
                    .foregroundColor(Color("Text-Color"))
            
                }
            ZStack {
                Text("Confirme seu\no recebimento")
                    .font(
                        Font.custom("SFProRounded-Heavy", size: 10)
                    )
                    .foregroundColor(.white)
                    
                    .padding(.top, -20)
                    .padding(.leading, 224)
                
                Toggle("", isOn: $isToggled)
                    
                    .padding(.top, 60)
                    .padding(.trailing, 60)
                
                    
            }
            
        }
    }
}

#Preview {
    ComponentSectionView(Logintitle: "Recebimento \nde pote", Loginname: "\nNome: Maria Cleide Resende", LoginDate: "Data: 27/02", LoginEndereco: "Endereço: Rua São José, 155", LoginRegional: "Regional III - Benfica", LoginImage: Image("pote"))
}