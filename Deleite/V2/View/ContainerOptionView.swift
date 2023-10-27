//
//  ContainerOptionView.swift
//  Deleite
//
//  Created by Raina on 23/10/23.
//

import SwiftUI


struct ContainerOptionView: View {
    
    @State var isShowTesteView: Bool = false
    
    
    
    var body: some View {
        NavigationView{
            ZStack{
                Color("Text-Color")
                    .ignoresSafeArea(.all)
                
                ScrollView{
                    VStack{
                        HStack(alignment: .center, spacing: 0) {
                            Text("De")
                                .foregroundColor(Color(red: 0.97, green: 0.87, blue: 0.51))
                            Text("leite")
                                .foregroundColor(Color.white)

                        }
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .font(
                        Font.custom("Fredoka", size: 24)
                        .weight(.semibold))
                        .multilineTextAlignment(.center)
                    }
                    .border(Color.yellow)
                    .padding(.bottom, 550)
                    .frame(width: 390, alignment: .topLeading)
                    .shadow(color: .black.opacity(0.3), radius: 0, x: 0, y: 0.5)

                    
                    HStack(alignment: .center, spacing: 10) {
                        NavigationLink(destination: PostloginView()) {
                            Text("Já tenho fraco de vidro")
                                .font(
                                    Font.custom("SF Pro Text", size: 17)
                                        .weight(.semibold)
                                )
                                .multilineTextAlignment(.center)
                                .foregroundColor(Color("Text-Color"))
                        }
                    }
                    .padding(.horizontal, 20)
                    .padding(.vertical, 13)
                    .frame(width: 326, alignment: .center)
                    .background(Color(red: 0.95, green: 0.87, blue: 0.62))
                    .cornerRadius(15)
                    
                    HStack(alignment: .center, spacing: 10) {
                        NavigationLink(destination: PostloginView()) {
                            Text("Não tenho frasco")
                                .font(
                                    Font.custom("SF Pro Text", size: 17)
                                        .weight(.semibold)
                                )
                                .multilineTextAlignment(.center)
                                .foregroundColor(Color("Text-Color"))
                        }
                        
                    }
                    .padding(.horizontal, 20)
                    .padding(.vertical, 13)
                    .frame(width: 326, alignment: .center)
                    .background(Color(red: 0.95, green: 0.87, blue: 0.62))
                    .cornerRadius(15)
                }
                .padding(.top, 0)
                .border(/*@START_MENU_TOKEN@*/Color.black/*@END_MENU_TOKEN@*/)
                
            }
        }.navigationViewStyle(.stack) 
    }
}
#Preview {
    ContainerOptionView()
}


