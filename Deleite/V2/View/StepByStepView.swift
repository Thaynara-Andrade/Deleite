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
                
                VStack{
                    VStack(alignment: .leading){
                        HStack{
                            Text("Para armazenar o leite, use ")
                                .foregroundColor(.white)
                            Text("frascos")
                                .foregroundColor(Color("Text-Yellow"))
                        }
                    }
                    
                    VStack(alignment: .leading){
                        HStack{
                            Text("de vidro")
                                .fontWeight(.bold)
                                .foregroundColor(Color("Text-Yellow"))
                            
                            Text(", como potes de café")
                                .foregroundColor(.white)
                        }.padding(.leading, -49)
                    }
                    
                    
                    VStack(alignment: .leading){
                        HStack{
                            Text("solúvel e maionese.")
                                .foregroundColor(.white)
                        }
                    }.padding(.leading, -127)
                }
                .font(Font.custom("SF Pro Text", size: 17))
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
                            Text("Certifique-se de que a tampa seja")
                                .foregroundColor(.white)
                            Text("de")
                                .foregroundColor(Color("Text-Yellow"))
                        }
                    }
                    
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
                    .padding(.leading, -26)
                    
                    HStack{
                        Text("vazamentos.")
                            .foregroundColor(.white)
                    }
                    .padding(.leading, -141)
                }
                .font(Font.custom("SF Pro Text", size: 17))
            }
            
            HStack{
                VStack (alignment: .leading) {
                    Text("3")
                        .font(
                            Font.custom("SF Pro", size: 20)
                                .weight(.bold)
                        )
                        .foregroundColor(Color(red: 0.1, green: 0.48, blue: 0.55))
                        .frame(width: 12.79518, height: 19, alignment: .topLeading)
                    
                }
                .frame(width: 30.92169, height: 38.06)
                .background(Image(blueBackground))
                .padding(.leading, -31)
        
                VStack{
                    VStack(alignment: .leading){
                        HStack{
                            Text("O frasco deve estar limpo ")
                                .foregroundColor(Color("Text-Yellow"))
                                .foregroundColor(.white)
                            Text(", porém")
                                .foregroundColor(.white)
                                .padding(.leading, -13)
                        }
                    }
                    
                    VStack(alignment: .leading){
                        HStack{
                            Text("ainda será necessário seguir as")
                                .foregroundColor(.white)
                        }.padding(.leading, -13)
                    }
                    
                    VStack(alignment: .leading){
                        HStack{
                            Text("instruções de esterilização.")
                                .foregroundColor(.white)
                        }.padding(.leading, -48)
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
