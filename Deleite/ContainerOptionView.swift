//
//  ContainerOptionView.swift
//  Deleite
//
//  Created by Raina on 23/10/23.
//

import SwiftUI


struct ContainerOptionView: View {
    var body: some View {
        
            ZStack{
                Color("Text-Color")
                    .ignoresSafeArea(.all)
               
                
                VStack{
                    Button(action: {
                        TesteView()
                    }) {
                        Text("Red thin text")
                            .font(.title)
                        
                            
                    }
                    .foregroundColor(Color("Text-Color"))
                    .frame(width: 297, height: 102)
                    .background(Color(red: 0.95, green: 0.87, blue: 0.62))
                    .cornerRadius(19)
                    
                    Button {
                    } label: {
                        Text("Não tenho frasco.")
                            .font(.title)
                    }
                    .foregroundColor(Color("Text-Color"))
                    .frame(width: 297, height: 102)
                    .background(Color(red: 0.95, green: 0.87, blue: 0.62))
                    .cornerRadius(19)
                    
                }
                .padding(.bottom, -200)
            }
        }
    
}


struct greeting{
    
}

#Preview {
    ContainerOptionView()
}

