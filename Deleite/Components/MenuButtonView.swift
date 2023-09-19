//
//  ComponentsView.swift
//  Deleite
//
//  Created by Marília de Sousa on 12/09/23.
//

import SwiftUI

struct MenuButton: View {

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

//            Button(action: {
//
//            }) {
//                ZStack {
//                    RoundedRectangle(cornerRadius: 30)
//                        .fill(.gray)
//                Text(titleButton).bold()
//                    .foregroundColor(titleColor)
//                Image(image)
//            }
//        }
        Button(action: {

        }) {
            ZStack {
//                RoundedRectangle(cornerRadius: 1)
//                Color("Button-Color")
//                    .fill(.background(Color("Button-Color")))
               
                HStack {
                    image
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 110, height: 110)
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
//                        .padding(.bottom, 16)
                    } .padding(.leading, 4)
                Spacer()
                    
                }
            }
            .frame(width: 335, height: 149, alignment: .center)
            .padding(.leading, 20)
            .background(colorButton)
            .cornerRadius(20)
            
        }
    }

}

struct MenuButtonView_Previews: PreviewProvider {
    static var previews: some View {
        MenuButton(titleButton: "Ama", description: "hoje", colorButton: Color.gray, titleColor: Color.black, image:Image("mama")
            )
//
    }
}

//MenuButton(titleButton: "Amamentação", description: "hoje", colorButton: Color.gray, titleColor: Color.black, image:Image("mama")
