//
//  ComponentsView.swift
//  Deleite
//
//  Created by Marília de Sousa on 12/09/23.
//

import SwiftUI

struct MenuButton: View {

    let titleButton: String
    let colorButton: Color
    let titleColor: Color
    let image: Image

    init(titleButton: String, colorButton: Color, titleColor: Color, image: Image) {
        self.titleButton = titleButton
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
                RoundedRectangle(cornerRadius: 30)
                    .fill(.gray)
                HStack {
                    image
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 110, height: 110)
                        .cornerRadius(10)
                        .multilineTextAlignment(.leading)
                VStack{
                    Text(titleButton)
                        .bold()
                        .foregroundColor(titleColor)
                    Text(titleButton)
                    .multilineTextAlignment(.leading)
                    .foregroundColor(.white)
                    .padding(.bottom, 16)
                }
                    
                }
            }
        }
    }

}

struct MenuButtonView_Previews: PreviewProvider {
    static var previews: some View {
        MenuButton(titleButton: "Amamentação", colorButton: Color.gray, titleColor: Color.black, image:Image("mama")
            )
//            .frame(width: 300, height: 200, alignment: .center)
    }
}
