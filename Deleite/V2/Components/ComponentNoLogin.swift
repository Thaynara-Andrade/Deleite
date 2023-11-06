//
//  ComponentNoLogin.swift
//  Deleite
//
//  Created by Marília de Sousa on 27/10/23.
//

import SwiftUI

struct ComponentNoLoginView: View {
    
    let Logintitle: String
    let Loginname: String
    let LoginImage: Image
    
    init(Logintitle: String, Loginname: String, LoginImage: Image) {
        self.Logintitle = Logintitle
        self.Loginname = Loginname
        self.LoginImage = LoginImage
    }
    
    var body: some View {
        ZStack {
            Rectangle()
                .frame(width: 350, height: 180)
                .foregroundColor(Color("Buttonvariable-Color"))
                .cornerRadius(21.8898)
            VStack(alignment: .leading) {
            
                Text(Logintitle)
                    .font(
                        Font.custom("SFProRounded-Black", size: 40)
                    )
                    .multilineTextAlignment(.leading)
                    .padding([.top], 5)
                    .padding([.leading], -140)
                    .foregroundColor(Color("Text-Color"))
                
                Text(Loginname)
                    .padding(.leading, -140)
                    .font(
                        Font.custom("SFProRounded-Medium", size: 17)
                    )
                    .foregroundColor(Color("Text-Color"))
            
                }
            ZStack {
                LoginImage
                    .resizable()
                    .frame(width: 100, height: 140)
                    .padding(.leading, 230)
            }
            
        }
    }
}

#Preview {
    ComponentNoLoginView(Logintitle: "Seja \nDoadora",  Loginname: "", LoginImage: Image("peito1"))
}
