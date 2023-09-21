//
//  DeleiteApp.swift
//  Deleite
//
//  Created by Thaynara da Silva Andrade on 11/09/23.
//

import SwiftUI

@main
struct DeleiteApp: App {
<<<<<<< Updated upstream
    @StateObject private var vm = LocationsViewModel()
    
    var body: some Scene {
        WindowGroup {            
            HomescreenView()
=======
    
    @State var tutorialIndex = 0
    
    let tutorialImages: [Post] = [
        Post(postImagem: "mama"),
        Post(postImagem: "mama"),
        Post(postImagem: "mama"),
        Post(postImagem: "mama"),
        Post(postImagem: "mama")
    ]
    
    var body: some Scene {
        WindowGroup {
            TutorialScroll(currentIndex: tutorialIndex, posts: tutorialImages)
            
>>>>>>> Stashed changes
        }
    }
}
