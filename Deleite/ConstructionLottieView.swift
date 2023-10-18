//
//  ConstructionLottieView.swift
//  Deleite
//
//  Created by Thaynara da Silva Andrade on 09/10/23.
//

import SwiftUI

struct ConstructionLottieView: View {
    var body: some View {
        
        ZStack {
            ZStack {
                LottieView(name: "Coleta", loopMode: .loop)
            } .padding(.bottom, 100.0)
            
            VStack{
                Text("Esta funcionalidade \nestá a caminho! ")
                    .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                    .fontWeight(.heavy)
                    .foregroundColor(Color("Text-Color"))
                    .multilineTextAlignment(.center)
                    .padding(.top, 300.0)
            } .padding()
        } .navigationTitle("Agendar coleta")
    }
}


