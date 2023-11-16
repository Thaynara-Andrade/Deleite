//
//  SucessLottieView.swift
//  Deleite
//
//  Created by Thaynara da Silva Andrade on 16/11/23.
//
import SwiftUI
import Lottie

struct SucessLottieView: View {
    
    @State private var isPresented: Bool = true
    @Binding var openRegistrationSheet: Bool

    var body: some View {
        if isPresented {
            MyFileLottieView(animationName: "Sucess",
                             loopMode: .playOnce,
                             contentMode: .scaleAspectFit)
                .frame(width: 200, height: 200)
                .onAppear {
                    DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
                        isPresented = false
                    }
                }

            VStack {
                Text("Seu agendamento foi \n realizado com sucesso!")
                    .font(.title2)
                    .fontWeight(.bold)
                    .multilineTextAlignment(.center)
                    .foregroundColor(Color("icon-color"))
            }
            .padding(.top, -30)
        } else {
            PostloginView()
        }
    }
}

#Preview {
    SucessLottieView(openRegistrationSheet: .constant(true))
}
