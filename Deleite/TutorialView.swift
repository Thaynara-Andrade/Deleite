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
                
                Group {
                    MenuButton(titleButton: "Amamentação", colorButton: Color.gray, titleColor: Color.black, image: "person.fill.questionmark")
                    
                    MenuButton(titleButton: "Ordenha", colorButton: Color.gray, titleColor: Color.black, image: "person.fill.questionmark")
                    
                    MenuButton(titleButton: "Higienização", colorButton: Color.gray, titleColor: Color.black, image: "person.fill.questionmark")
                }
                .frame(width: 200, height: 200)
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
