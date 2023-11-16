//
//  DeleiteApp.swift
//  Deleite
//
//  Created by Thaynara da Silva Andrade on 11/09/23.
//

import SwiftUI
import Mixpanel
import CloudKit
import Nuvem

enum Env {
    static let string: String = "dev"
}

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
           // CloudKitCRUDIView()
           NoLoginView()
                .environmentObject(vm)
                .onAppear {
                    Mixpanel.mainInstance().track(event: "Entrou no App", properties: ["ambiente": Env.string])
                }
        }
    }
    
    init() {
        Mixpanel.initialize(
            token: "4a9af2116a86ee26043b2ad1b4a3cf0f",
            trackAutomaticEvents: true
        )
    }
}
