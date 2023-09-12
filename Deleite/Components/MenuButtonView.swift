//
//  ComponentsView.swift
//  Deleite
//
//  Created by Marília de Sousa on 12/09/23.
//

import SwiftUI

struct MenuButton: View {
    
    let titleButton: String;
    let colorButton: Color;
    let titleColor: Color;
    let image: String
    
    init(titleButton: String, colorButton: Color, titleColor: Color, image: String) {
        self.titleButton = titleButton
        self.colorButton = colorButton
        self.titleColor = titleColor
        self.image = ""
    }
    
    var body: some View {
        
        ZStack {
            RoundedRectangle(cornerRadius: 15)
                .fill(.gray)
            Button {
                
            } label: {
                Text(titleButton).bold()
                    .foregroundColor(titleColor)
                Image(image)
                
            }
        }
    }
        
}

struct MenuButtonView_Previews: PreviewProvider {
    static var previews: some View {
        MenuButton(titleButton: "Amamentação", colorButton: Color.gray, titleColor: Color.black, image: "person.fill.questionmark")
            .frame(width: 200, height: 200, alignment: .center)
    }
}
