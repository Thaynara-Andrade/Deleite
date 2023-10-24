//
//  HomeButton.swift
//  Deleite
//
//  Created by Thaynara da Silva Andrade on 18/09/23.
//
import SwiftUI

struct HomeButton: View {

    let HometitleButton: String
    let HomecolorButton: Color
    let HometitleColor: Color

    init(HometitleButton: String, HomecolorButton: Color, HometitleColor: Color) {
        self.HometitleButton = HometitleButton
        self.HomecolorButton = HomecolorButton
        self.HometitleColor = HometitleColor
    }

    var body: some View {
        ZStack {
            VStack {
                Text(HometitleButton)
                    .font(.title3)
                    .fontWeight(.heavy)
                    .multilineTextAlignment(.leading)
                    .padding(.leading, 20)
                    .padding(.top, 20)
                    .frame(width: 160, height: 210, alignment: .topLeading)
                    .background(HomecolorButton)
                    .foregroundColor(HometitleColor)
                    .cornerRadius(24)
            }
        }
    }
}

struct HomeButtonView_Previews: PreviewProvider {
    static var previews: some View {
        HomeButton(HometitleButton: "Banco\nde leite", HomecolorButton: Color("Button-Color"), HometitleColor: Color.white)
            
    }
}
