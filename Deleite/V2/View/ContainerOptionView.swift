//
//  ContainerOptionView.swift
//  Deleite
//
//  Created by Raina on 23/10/23.
//

import SwiftUI


struct ContainerOptionView: View {
    
    @State var isShowTesteView: Bool = false
    @State var shownextPageRegister = false
    @State var showSheet = false

    var yellowBackground: String = "yellow-background-image"
    var bottleImage: String = "bottle-image"
    
    var body: some View {
        NavigationView{
            ZStack{
                Color("Text-Color")
                    .ignoresSafeArea(.all)
                
                ScrollView{
                    VStack(alignment: .leading) {
                        HStack(alignment: .center, spacing: 0) {
                            Text("De")
                                .foregroundColor(Color(red: 0.97, green: 0.87, blue: 0.51))
                            Text("leite")
                                .foregroundColor(Color.white)

                        }
                        .font(
                        Font.custom("Fredoka", size: 24)
                        .weight(.semibold)
                        )
                        .multilineTextAlignment(.center)
                        .foregroundColor(Color(red: 0.97, green: 0.87, blue: 0.51))
                        .frame(width: 82, height: 27, alignment: .top)
                    }
                    .frame(width: 390, alignment: .topLeading)
                    .shadow(color: .black.opacity(0.3), radius: 0, x: 0, y: 0.5)
                    .padding(.leading, 30)

                    HStack{
                        Image(yellowBackground)
                            .resizable()
                            .scaledToFit()
                            .frame(width: 183, height: 184)
                            .overlay {
                                Image(bottleImage)
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 117.3016, height: 136.99992)
                                    .opacity(0.9)
                                    .offset(y: -9)
                            }
                    }.padding(.top, 40)
                    
                    VStack{
                        StepByStepView()
                    }.padding(.top, 35)
                    
                    Button {
                        showSheet = true
                    } label: {
                        Text("Já tenho frasco de vidro")
                            .font(
                                Font.custom("SF Pro Text", size: 17)
                                    .weight(.semibold)
                            )
                            .multilineTextAlignment(.center)
                            .foregroundColor(Color("Text-Color"))
                            .padding(.horizontal, 20)
                            .padding(.vertical, 13)
                            .frame(width: 326, alignment: .center)
                            .background(Color(red: 0.95, green: 0.87, blue: 0.62))
                            .cornerRadius(15)
                    }
                    .sheet(isPresented: $showSheet, onDismiss: nil) {
                        RegisterDonationView()
                    }
                    
                    
                    NavigationLink(destination: PostloginView()) {
                        HStack(alignment: .center, spacing: 10) {
                            Text("Não tenho frasco")
                                .font(
                                    Font.custom("SF Pro Text", size: 17)
                                        .weight(.semibold)
                                )
                                .multilineTextAlignment(.center)
                                .foregroundColor(Color("Text-Yellow"))
                        }
                        .padding(.horizontal, 20)
                        .padding(.vertical, 13)
                        .frame(width: 326, alignment: .center)
                        .cornerRadius(15)
                        .overlay(
                        RoundedRectangle(cornerRadius: 15)
                        .inset(by: 1.5)
                        .stroke(Color("Button-Yellow"))
                        )
                    }
                }
                
            }
        }.navigationViewStyle(.stack)

    }
}
#Preview {
    ContainerOptionView()
}


