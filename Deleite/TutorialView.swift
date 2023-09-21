//
//  TutorialView.swift
//  Deleite
//
//  Created by Marília de Sousa on 11/09/23.
//

import SwiftUI

struct TutorialView: View {
    var body: some View {
        
        NavigationView {
 
            VStack (spacing: 20){

                        MenuButton(
                            titleButton: "Higienização",
                            description: "Como fazer a limpeza correta antes da retiradado leite",
                            colorButton: Color("Button-Color"),
                            titleColor: Color.white,
                            image: Image("mama"))
                            
                       MenuButton(
                            titleButton: "Coleta manual",
                            description: "Aprenda a coletar o leite da maneira correta, sem rezíduos",
                            colorButton: Color("Button-Color"),
                            titleColor: Color.white,
                            image: Image("mama"))
                        
                        MenuButton(
                            titleButton: "Guardando",
                            description: "Text-Color",
                            colorButton: Color("Button-Color"),
                            titleColor: Color.white,
                            image: Image("mama"))
    
                Spacer()
                   
            }  .padding(.top, 35)
            .navigationTitle("Tutorial")
        }
    }
}

struct TutorialView_Previews: PreviewProvider {
    static var previews: some View {
        TutorialView()
    }
}
