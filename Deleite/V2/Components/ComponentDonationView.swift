//
//  ComponentDonationView.swift
//  Deleite
//
//  Created by Thaynara da Silva Andrade on 23/10/23.
//

import SwiftUI

struct ComponentDonationView: View {
    
    @State private var isToggled = false
    let Logintitle: String
    let Loginname: String
    let LoginImage: Image
    
    init(Logintitle: String, Loginname: String, LoginImage: Image) {
        self.Logintitle = Logintitle
        self.Loginname = Loginname
        self.LoginImage = LoginImage
    }
    
    var body: some View {
        ZStack (alignment: .center) {
            Rectangle()
                .frame(width: 350, height: 180)
                .foregroundColor(Color("Rectangle-color"))
                .cornerRadius(21.8898)
            VStack(alignment: .leading) {
            
                Text(Logintitle)
                    .font(
                        Font.custom("SFProRounded-Black", size: 35)
                    )
                    .multilineTextAlignment(.leading)
                    .padding(.top, -5)
                    .padding(.leading, -40)
                    .foregroundColor(Color("icon-color"))
                Text(Loginname)
                    .padding(.leading, -40)
                    .padding(.bottom, -5)
                    .font(
                        Font.custom("SFProRounded-Medium", size: 17)
                    )
                    .foregroundColor(Color("icon-color"))
                
            }
            LoginImage
                .resizable()
                .frame(width: 140, height: 110)
                .padding(.leading, 210)
            
        }
    }
}

#Preview {
    ComponentDonationView(Logintitle: "Fazer \ndoação", Loginname: "Agende o recebimento \ndo seu potinho ou escolha \na melhor data para fazer sua coleta", LoginImage: Image("Doar"))
}
