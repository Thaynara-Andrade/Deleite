//
//  MenuButtonColeta.swift
//  Deleite
//
//  Created by Marília de Sousa on 29/09/23.
//

import SwiftUI

struct MenuButtonColeta: View {

    let titleButton: String
    let description: String
    let colorButton: Color
    let titleColor: Color
    let image: Image

    init(titleButton: String, description: String, colorButton: Color, titleColor: Color, image: Image) {
        self.titleButton = titleButton
        self.description = description
        self.colorButton = colorButton
        self.titleColor = titleColor
        self.image = image
    }

    var body: some View {
            
            ZStack {
               
                HStack {
                    image
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width:110, height: 110)
                        .cornerRadius(10)
                        .multilineTextAlignment(.leading)
                    VStack (alignment: .leading){
                    Text(titleButton)
                        .font(.title)
                        .fontWeight(.heavy)
                        .bold()
                        .foregroundColor(titleColor)
                        
                    Text(description)
                        .fontWeight(.semibold)
                        .foregroundColor(titleColor)
                        .multilineTextAlignment(.leading)
                    }   .padding(.leading, 4)
                Spacer()
                    
                }
            }
            .frame(width: 335, height: 149, alignment: .center)
            .padding(.leading, 20)
            .background(colorButton)
            .cornerRadius(20)
            
        }
    }
