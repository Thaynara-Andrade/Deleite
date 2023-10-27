//
//  StepByStepView.swift
//  Deleite
//
//  Created by Raina on 27/10/23.
//

import SwiftUI

struct StepByStepView: View {
    
    var blueBackground: String = "blue-background-image"
    
    var body: some View {
        HStack{
            VStack {
                Text("1")
                    .font(
                        Font.custom("SF Pro", size: 20)
                            .weight(.bold)
                    )
                    .foregroundColor(Color(red: 0.1, green: 0.48, blue: 0.55))
                    .frame(width: 12.79518, height: 19, alignment: .topLeading)
                
            }
            .frame(width: 30.92169, height: 38.06)
            .background(Image(blueBackground))
            
            Text("Texto 1")
        }
        
        HStack{
            VStack {
                Text("2")
                    .font(
                        Font.custom("SF Pro", size: 20)
                            .weight(.bold)
                    )
                    .foregroundColor(Color(red: 0.1, green: 0.48, blue: 0.55))
                    .frame(width: 12.79518, height: 19, alignment: .topLeading)
                
            }
            .frame(width: 30.92169, height: 38.06)
            .background(Image(blueBackground))
            
            
        }
        
        HStack{
            VStack {
                Text("2")
                    .font(
                        Font.custom("SF Pro", size: 20)
                            .weight(.bold)
                    )
                    .foregroundColor(Color(red: 0.1, green: 0.48, blue: 0.55))
                    .frame(width: 12.79518, height: 19, alignment: .topLeading)
                
            }
            .frame(width: 30.92169, height: 38.06)
            .background(Image(blueBackground))
            
            VStack{
                VStack(alignment: .leading){
                    HStack{
                        Text("O frasco deve estar limpo")
                            .foregroundColor(Color("Text-Yellow"))
                            
                        
                        
                        Text(", porém ")
                            .foregroundColor(.white)
                            .padding(.leading, -9)
                    }
                }.padding(.leading, 15)
                
                VStack(alignment: .leading){
                    Text("ainda será necessário seguir as\ninstruções de esterilização.")
                        .foregroundColor(.white)
                }
            }
            .font(Font.custom("SF Pro Text", size: 17))
        }
    }
}


#Preview {
    ZStack{
        Color("Text-Color")
            .ignoresSafeArea(.all)
        VStack{
            StepByStepView()
            
        }
    }
}
