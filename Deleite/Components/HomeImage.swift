//
//  HomeImage.swift
//  Deleite
//
//  Created by Thaynara da Silva Andrade on 19/09/23.
//
import SwiftUI

struct HomeImage: View {

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
                VStack{
                    Text(HometitleButton)
                        .font(.title3)
                        .fontWeight(.heavy)
                        .multilineTextAlignment(.leading)
                        .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                        .padding(.leading, 20)
                        .padding(.top, -80)
                        .frame(width: 160, height: 210)
                        .background(HomecolorButton)
                        .foregroundColor(HometitleColor)
                        .cornerRadius(24)
                        
                }
                    
                }
        }
    }


struct HomeImageView_Previews: PreviewProvider {
    static var previews: some View {
        HomeButton(HometitleButton: "Banco de \nleite", HomecolorButton: Color("Button-Color"), HometitleColor: Color.white
            )
           .frame(width: 160, height: 210, alignment: .center)
    }
}

