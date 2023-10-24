//
//  LottieView.swift
//  Deleite
//
//  Created by Thaynara da Silva Andrade on 09/10/23.

import SwiftUI 
import Lottie

struct LottieView: UIViewRepresentable {
    let name: String
    let loopMode: LottieLoopMode
    let animationSpeed: CGFloat
    
    let animationView: LottieAnimationView
    
    init(name: String, loopMode: LottieLoopMode = .playOnce, animationSpeed: CGFloat = 1) {
        self.name = name
        self.animationView = LottieAnimationView (name: name)
        self.loopMode = loopMode
        self.animationSpeed = animationSpeed
    }
    func makeUIView(context: Context) -> UIView {
        let view = UIView(frame: .zero)
        view.addSubview(animationView)
        animationView.translatesAutoresizingMaskIntoConstraints = false
        animationView.heightAnchor.constraint(equalTo: view.heightAnchor).isActive = true
        animationView.widthAnchor.constraint(equalTo: view.widthAnchor).isActive = true
        animationView.loopMode = loopMode
        animationView.animationSpeed = animationSpeed
        animationView.play()
        return view
    }
    func updateUIView(_ uiView: UIView, context: Context) {
        
    }
        
}
    
    
