//
//  ComponentDonationView.swift
//  Deleite
//
//  Created by Thaynara da Silva Andrade on 23/10/23.
//

import SwiftUI
import Mixpanel

struct ComponentDonationView: View {
    
    @State private var selectContainerOption: Bool = false
    
    let Logintitle: String
    let Loginname: String
    let LoginImage: Image
    
    init(Logintitle: String, Loginname: String, LoginImage: Image) {
        self.Logintitle = Logintitle
        self.Loginname = Loginname
        self.LoginImage = LoginImage
    }
    
    var body: some View {
        Button {
            selectContainerOption = true
        } label: {
            ZStack{
                VStack {
                    Text(Logintitle)
                        .font(
                            Font.custom("SFProRounded-Black", size: 30)
                        )
                        .multilineTextAlignment(.leading)
                        .foregroundColor(Color.white)
                        .padding(.bottom, -2)


                    Text(Loginname)
                        .multilineTextAlignment(.leading)
                        .padding(.leading, 50)
                    
                        .font(
                            Font.custom("SFProRounded-Medium", size: 17)
                        )
                        .foregroundColor(Color.white)


                        
                    
                } .padding(.leading, -180)
                .frame(width: 356, height: 160)
                    .background(Color("Text-Color"))
                    .cornerRadius(23)
                    .shadow(radius: 2)
                
                LoginImage
                    .resizable()
                    .frame(width: 146, height: 110)
                    .padding(.leading, 210)
            }
            .sheet(isPresented: $selectContainerOption, onDismiss: nil) {
                ContainerOptionView(openRegistrationSheet: $selectContainerOption)
            }
        }
    }
}

#Preview {
    ComponentDonationView(Logintitle: "Fazer \ndoação", Loginname: "Agende aqui o melhor \ndia para sua doação", LoginImage: Image("Doar"))
}
