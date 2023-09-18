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
 
            VStack {
//                Text("")
//                .toolbar {
//
//                    ToolbarItem(placement: .navigationBarLeading) {
//                        Button {
//                            print("")
//                        } label: {
//                            HStack {
//                                Image(systemName: "chevron.backward")
//                                Text("Voltar")
//                            }
//                        }
//                    }
//                }
                
                
//                    ImageCard()
//                        .padding()
//                        .frame(width: 100, height: 200 )
//                    ImageCard()
//                        .padding()
//                        .frame(width: 100, height: 200)
//                    ImageCard()
//                        .padding()
                    Group {
                        MenuButton(titleButton: "Amamentação",
                                   colorButton: Color.gray,
                                   titleColor: Color.black,
                                   image: Image("mama"))
                            
//                        MenuButton(
//                                titleButton: "Ordenha",
//                                colorButton: Color.gray,
//                                titleColor: Color.black,
//                                image: Image("mama"))
//
//                        MenuButton(
//                                titleButton: "Higienização",
//                                colorButton: Color.gray,
//                                titleColor: Color.black,
//                                image: Image("mama"))
                        
    
                    }
                    .padding()
                    .frame(width: 370, height: 190)
            }
            .navigationTitle("Tutorial")
        }
    }
}

struct TutorialView_Previews: PreviewProvider {
    static var previews: some View {
        TutorialView()
    }
}
