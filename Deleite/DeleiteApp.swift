//
//  DeleiteApp.swift
//  Deleite
//
//  Created by Thaynara da Silva Andrade on 11/09/23.
//

import SwiftUI

  @main
struct DeleiteApp: App {
    
    @StateObject private var vm = LocationsViewModel()
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
            HomescreenView()
                .environmentObject(vm)
        }
    }
}
