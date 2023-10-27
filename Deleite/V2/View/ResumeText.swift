//
//  ResumeText.swift
//  Deleite
//
//  Created by Raina on 27/10/23.
//

import SwiftUI

struct ResumeText: View {
    
    var body: some View {
        
        VStack{
            VStack(alignment: .leading){
                HStack{
                    Text("Certifique-se de que a tampa seja")
                        .foregroundColor(.white)
                    Text("de")
                        .foregroundColor(Color("Text-Yellow"))
                }
            }.border(Color.red)
            
            VStack(alignment: .leading){
                HStack{
                    Text("plástico e de rosquear")
                        .fontWeight(.bold)
                        .foregroundColor(Color("Text-Yellow"))
                        .font(
                            Font.custom("SF Pro Text", size: 17)
                            .weight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                        )
                    
                    Text("para evitar")
                        .foregroundColor(.white)
                }
            }
            .border(/*@START_MENU_TOKEN@*/Color.black/*@END_MENU_TOKEN@*/)
            .padding(.leading, -26)
            
            HStack{
                Text("vazamentos.")
                    .foregroundColor(.white)
            }
            .border(Color.yellow)
            .padding(.leading, -141)
        }
        .font(Font.custom("SF Pro Text", size: 17))
        
    }
}


#Preview {
    ZStack{
        Color("Text-Color")
            .ignoresSafeArea(.all)
        VStack{
            ResumeText()
            
        }
    }
}
