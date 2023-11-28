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
    
    let database = CKContainer.default().publicCloudDatabase
    
    var body: some Scene {
        WindowGroup {
           // CloudKitCRUDIView()
           NoLoginView()
               .environmentObject(vm)
                .onAppear {
                    Mixpanel.mainInstance().track(event: "Entrou no App", properties: ["ambiente": Env.string])
                    
                    // MARK: Hello Nuvem
//                    Task {
//                        var newMother = Mother(name: "Joana", cep: "12345-123")
//                        try await newMother.save(on: database)
//                        
//                        var new = Scheduling()
//                        new.mother = newMother
//                        new.collectDate = Date.now.advanced(by: 60*60*24*2)
//                        new.milkDate = Date.now
//                        new.regional = "Regional 4"
//                        try await new.save(on: database)
                        
//                        let mothers: [Mother] = try await Mother
//                            .query(on: database)
//                            .all()
//                        
//                        for mother in mothers {
//                            print(mother.id)
//                            print(mother.creationDate!)
//                            print(mother.modificationDate!)
//                            print(mother.name)
//                            print(mother.cep)
//                            print("---")
//                        }
//                    }
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
