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
                    .font(.body)
                    .fontWeight(.bold)
                    .foregroundColor(Color(red: 0.1, green: 0.48, blue: 0.55))
                    .frame(width: 12.79518, height: 19, alignment: .topLeading)
                
            }
            .frame(width: 30.92169, height: 38.06)
            .background(Image(blueBackground))
            
            VStack{
                VStack(alignment: .leading){
                    HStack{
                        Text("Para armazenar o leite, use")
                        Text("frascos")
                            .font(.subheadline)
                            .fontWeight(.bold)
                            .foregroundColor(Color("icon-color"))
                    }
                }
                
                VStack(alignment: .leading){
                    HStack{
                        Text("de vidro,")
                            .font(.subheadline)
                            .fontWeight(.bold)
                            .foregroundColor(Color("icon-color"))
                        
                        Text("como potes de café")
                        
                    }.padding(.leading, -49)
                }
                
                
                VStack(alignment: .leading){
                    HStack{
                        Text("solúvel e maionese.")
                        
                    }
                }.padding(.leading, -127)
            }
            .font(Font.custom("SF Pro Text", size: 17))
        }
        .padding(.vertical, 10)
        
        
        HStack{
            VStack {
                Text("2")
                    .font(.body)
                    .fontWeight(.bold)
                    .foregroundColor(Color("icon-color"))
                    .frame(width: 12.79518, height: 19, alignment: .topLeading)
                
            }
            .frame(width: 30.92169, height: 38.06)
            .background(Image(blueBackground))
            
            VStack{
                VStack(alignment: .leading){
                    HStack{
                        Text("Certifique-se de que a tampa seja")
                        
                        Text("de")
                            .font(.subheadline)
                            .fontWeight(.bold)
                            .foregroundColor(Color("icon-color"))
                    }
                }
                
                VStack(alignment: .leading){
                    HStack{
                        Text("plástico e de rosquear")
                            .font(.subheadline)
                            .fontWeight(.bold)
                            .foregroundColor(Color("icon-color"))
                            .font(
                                Font.custom("SF Pro Text", size: 17)
                                    .weight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                            )
                        
                        Text("para evitar")
                        
                    }
                }
                .padding(.leading, -26)
                
                HStack{
                    Text("vazamentos.")
                    
                }
                .padding(.leading, -141)
            }
            .font(Font.custom("SF Pro Text", size: 17))
        }
        .padding(.vertical, 10)
        
        HStack{
            VStack{
                HStack{
                    Text("3")
                        .font(.body)
                        .fontWeight(.bold)
                        .foregroundColor(Color(red: 0.1, green: 0.48, blue: 0.55))
                        .frame(width: 12.79518, height: 19, alignment: .topLeading)
                }
                .frame(width: 30.92169, height: 38.06)
                .background(Image(blueBackground))
                .padding(.leading, -31)
            }
            .border(Color.red)
            
            VStack{
                VStack(alignment: .leading){
                    HStack{
                        Text("O frasco deve estar limpo, ")
                            .font(.subheadline)
                            .fontWeight(.bold)
                            .foregroundColor(Color("icon-color"))
                        
                        Text(" porém")
                        
                            .padding(.leading, -13)
                    }
                }
                
                VStack(alignment: .leading){
                    HStack{
                        Text("ainda será necessário seguir as")
                        
                    }.padding(.leading, -1)
                }
                
                VStack(alignment: .leading){
                    HStack{
                        Text("instruções de esterilização.")
                        
                            .multilineTextAlignment(.leading)
                    }.padding(.leading, -35)
                }
            }
            .font(Font.custom("SF Pro Text", size: 17))
        }
        .padding(.vertical, 10)
        
    }
}


#Preview {
    
    StepByStepView()
    
}
