//
//  ContainerOptionView.swift
//  Deleite
//
//  Created by Raina on 23/10/23.
//

import SwiftUI


struct ContainerOptionView: View {
    
    @State private var isShowTesteView: Bool = false
    @State private var showNextPageRegister = false
    @Binding var openRegistrationSheet: Bool
    
    //Sheet e buttons
    @State private var goToRegister: Bool = false
    @State private var goToRecipientRegister: Bool = false
    
    var yellowBackground: String = "yellow-background-image"
    var bottleImage: String = "bottle-image"
    
    var body: some View {
        NavigationView{
            ZStack{
                
                ScrollView{
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
                    }
                    .padding(.top, 20)
                    .padding(.bottom, 30)
                    
                    VStack {
                        NavigationLink(isActive: $goToRegister) {
                            ResumeView(openRegistrationSheet: $openRegistrationSheet)
                        } label: {
                            ButtonNextView(ButtonNext: "Já tenho frasco de vidro")
                        }
                    }
                    
                    VStack {
                        NavigationLink(isActive: $goToRecipientRegister) {
                            RecipientPersonalRegistrationView(openRegistrationSheet: $openRegistrationSheet)
                        } label: {
                            Text("Não tenho frasco")
                                .font(.headline)
                                .fontWeight(.bold)
                                .multilineTextAlignment(.center)
                                .foregroundColor(Color("icon-color"))
                        }
                        .padding(.horizontal, 20)
                        .padding(.vertical, 13)
                        .frame(width: 326, alignment: .center)
                        .cornerRadius(15)
                        .overlay(
                            RoundedRectangle(cornerRadius: 15)
                                .inset(by: 1.5)
                                .stroke(Color("icon-color"))
                        )
                        .toolbar {
                            ToolbarItem(placement: .navigationBarTrailing) {
                                Button("Cancelar") {
                                    openRegistrationSheet = false
                                }
                            }
                        }
                    }
                }
            }
        }
    }
}


#Preview {
    ContainerOptionView(openRegistrationSheet: .constant(true))
}


