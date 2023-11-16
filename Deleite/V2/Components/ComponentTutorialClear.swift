//
//  ComponentTutorialClear.swift
//  Deleite
//
//  Created by Thaynara da Silva Andrade on 06/11/23.
//

import SwiftUI

struct ComponentTutorialClear: View {
    let Tutorialtitle: String
    let Tutorialdescription: String
    let TutorialImage: Image
    
    init(Tutorialtitle: String, Tutorialdescription: String, TutorialImage: Image) {
        self.Tutorialtitle = Tutorialtitle
        self.Tutorialdescription = Tutorialdescription
        self.TutorialImage = TutorialImage
    }
    
    var body: some View {
        HStack{
            ZStack (alignment: .center){
                Circle()
                    .frame(height: 60)
                    .foregroundColor(Color("Button-Yellow"))
                TutorialImage
                    .resizable()
                    .frame(width: 25, height: 30)
                    
            }.padding(.top,-45)
            
            VStack (alignment: .leading){
                
                Text(Tutorialtitle)
                    .font(
                        Font.custom("SFProRounded-Semibold", size: 23)
                    )
                    .multilineTextAlignment(.leading)
                    .foregroundColor(.black)
                    .padding(.bottom, -2)
                
                Text(Tutorialdescription)
                    .font(
                        Font.custom("SFProRounded-Medium", size: 17)
                    )
                    .multilineTextAlignment(.leading)
                    .foregroundColor(.black)
                    
                
            }
        } .frame(width: 360, height: 160)
            .background(.clear)
    }
}

#Preview {
    ComponentTutorialClear(Tutorialtitle:"Primeiro passo", Tutorialdescription: "Lave um frasco de vidro de boca larga com tampa de plástico (do tipo café solúvel), retirando o rótulo e o papel de dentro da tampa.", TutorialImage: Image("pote"))
}
