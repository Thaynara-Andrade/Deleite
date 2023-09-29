//
//  TutorialView.swift
//  Deleite
//
//  Created by Marília de Sousa on 11/09/23.
//

import SwiftUI

struct TutorialView: View {
    @State var tutorialIndex = 0

    let tutorialHigiene: [Post] = [
        Post(postImagem: "Higiene-1"),
        Post(postImagem: "Higiene-2"),
        Post(postImagem: "Higiene-3"),
        Post(postImagem: "Higiene-4"),
        Post(postImagem: "Higiene-5")
    ]
    
    let tutorialColeta:[Post] = [
        Post(postImagem: "Coleta1"),
        Post(postImagem: "Coleta2"),
        Post(postImagem: "Coleta3"),
        Post(postImagem: "Coleta4"),
        Post(postImagem: "Coleta5"),
    ]
    
    let tutorialArmazenamento:[Post] = [
        Post(postImagem: "Armazenamento1"),
        Post(postImagem: "Armazenamento2"),
        Post(postImagem: "Armazenamento3"),
        Post(postImagem: "Armazenamento4"),
        Post(postImagem: "Armazenamento5"),
    ]
    
    var body: some View {
        
       
 
            VStack (spacing: 20){
                NavigationLink(destination: TutorialSanitation(currentIndex: tutorialIndex, posts: tutorialHigiene)) {
                    
                        MenuButtonHigiene(
                            titleButton: "Higienização",
                            description: "Como se preparar para o momento da retirada do leite materno",
                            colorButton: Color("Buttonvariable-Color"),
                            titleColor: Color("Text-Color"),
                            image: Image("HigieneCapa"))}
                            
                NavigationLink(destination:
                    TutorialCollect(currentIndex: tutorialIndex, posts: tutorialColeta)) {
                    MenuButtonColeta(
                        titleButton: "Coleta",
                        description: "Como coletar o leite de maneira simples e com baixo risco de resíduos",
                        colorButton: Color("Buttonvariable-Color"),
                        titleColor: Color("Text-Color"),
                        image: Image("ColetaCapa"))}
                        
                NavigationLink(destination:
                    TutorialStorege(currentIndex: tutorialIndex, posts: tutorialColeta)) {
                    MenuButtonArmazenamento(
                        titleButton: "Guardando",
                        description: "Como armazenar o leite coletado de maneira segura",
                        colorButton: Color("Buttonvariable-Color"),
                        titleColor: Color("Text-Color"),
                        image: Image("ArmazenamentoCapa"))}
    
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
