//
//  MyFileLottieView.swift
//  Deleite
//
//  Created by Thaynara da Silva Andrade on 16/11/23.
//

import SwiftUI
import Lottie

struct MyFileLottieView: UIViewRepresentable {
    let animationName: String
    var loopMode: LottieLoopMode = .playOnce
    var contentMode: UIView.ContentMode = .scaleAspectFit

    func makeUIView(context: Context) -> UIView {
        let view = UIView()

        let animationView = LottieAnimationView()
        animationView.animation = LottieAnimation.named(animationName)
        animationView.contentMode = contentMode
        animationView.loopMode = loopMode
        animationView.play()

        animationView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(animationView)

        NSLayoutConstraint.activate([
            animationView.widthAnchor.constraint(equalTo: view.widthAnchor),
            animationView.heightAnchor.constraint(equalTo: view.heightAnchor)
        ])

        return view
    }

    func updateUIView(_ uiView: UIView, context: Context) {}
}
