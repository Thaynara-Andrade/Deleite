//
//  TutorialView.swift
//  Deleite
//
//  Created by Marília de Sousa on 11/09/23.
//

import SwiftUI

struct TutorialView: View {
    @State var tutorialIndex = 0

    let tutorialImages: [Post] = [
        Post(postImagem: "TESTE-CARD"),
        Post(postImagem: "TESTE-CARD"),
        Post(postImagem: "TESTE-CARD"),
        Post(postImagem: "TESTE-CARD"),
        Post(postImagem: "TESTE-CARD")
    ]
    
    var body: some View {
        
       
 
            VStack (spacing: 20){
                NavigationLink(destination: TutorialSanitation(currentIndex: tutorialIndex, posts: tutorialImages)) {
                    
                        MenuButton(
                            titleButton: "Higienização",
                            description: "Como fazer a limpeza correta antes da retiradado leite",
                            colorButton: Color("Button-Color"),
                            titleColor: Color.white,
                            image: Image("higiene"))}
                            
                NavigationLink(destination: TutorialCollect()) {
                    MenuButton(
                        titleButton: "Coleta",
                        description: "Aprenda a coletar o leite da maneira correta, sem rezíduos",
                        colorButton: Color("Button-Color"),
                        titleColor: Color.white,
                        image: Image("mama"))}
                        
                NavigationLink(destination: TutorialStorege()) {
                    MenuButton(
                        titleButton: "Guardando",
                        description: "Text-Color",
                        colorButton: Color("Button-Color"),
                        titleColor: Color.white,
                        image: Image("mama"))}
    
                Spacer()
                   
            }  .padding(.top, 32)
            .navigationTitle("Tutorial")
        
    }
}

struct TutorialView_Previews: PreviewProvider {
    static var previews: some View {
        TutorialView()
    }
}
