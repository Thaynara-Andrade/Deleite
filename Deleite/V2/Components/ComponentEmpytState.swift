//
//  ComponentEmpytState.swift
//  Deleite
//
//  Created by Marília de Sousa on 27/10/23.
//

import SwiftUI

struct ComponentEmpytState: View {
    
    let LoginImage: Image
    let Loginname: String
   
    
    init(LoginImage: Image, Loginname: String) {
        self.LoginImage = LoginImage
        self.Loginname = Loginname
    }
    var body: some View {
        VStack{
            LoginImage
                .font(.system(size:60))
                .foregroundColor(Color.gray.opacity(0.2))
            
            Text(Loginname)
                .padding(.bottom, -5)
                .font(
                    Font.custom("SFProRounded-Medium", size: 17)
                )
                .foregroundColor(Color.gray.opacity(0.4))
        }
    }
}

#Preview {
    ComponentEmpytState(LoginImage: Image(systemName: "calendar.badge.plus"), Loginname:"Ainda não há agendamentos")
}
