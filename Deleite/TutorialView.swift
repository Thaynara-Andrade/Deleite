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
        Post(postImagem: "Group 32"),
        Post(postImagem: "Group 32"),
        Post(postImagem: "Group 32"),
        Post(postImagem: "Group 32"),
        Post(postImagem: "Group 32")
    ]
    
    var body: some View {
        
       
 
            VStack (spacing: 20){
                NavigationLink(destination: TutorialSanitation(currentIndex: tutorialIndex, posts: tutorialImages)) {
                    
                        MenuButton(
                            titleButton: "Higienização",
                            description: "Como se preparar para o momento da retirada do leite materno",
                            colorButton: Color("Buttonvariable-Color"),
                            titleColor: Color("Text-Color"),
                            image: Image("higiene"))}
                            
                NavigationLink(destination: TutorialCollect()) {
                    MenuButton(
                        titleButton: "Coleta",
                        description: "Como coletar o leite de maneira simples e com baixo risco de resíduos",
                        colorButton: Color("Buttonvariable-Color"),
                        titleColor: Color("Text-Color"),
                        image: Image("mama"))}
                        
                NavigationLink(destination: TutorialStorege()) {
                    MenuButton(
                        titleButton: "Guardando",
                        description: "Como armazenar o leite coletado de maneira segura",
                        colorButton: Color("Buttonvariable-Color"),
                        titleColor: Color("Text-Color"),
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
