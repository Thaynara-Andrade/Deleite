//
//  ComponentscircleView.swift
//  Deleite
//
//  Created by Thaynara da Silva Andrade on 27/10/23.
//

import SwiftUI

struct ComponentscircleView: View {
    
    let LoginImage: Image
    
    init(LoginImage: Image) {
        self.LoginImage = LoginImage
    }
    
    var body: some View {
        
        ZStack (alignment: .center) {
            Circle()
                .frame(width: 70)
                .foregroundColor(Color("yellow-color"))
            LoginImage
                .resizable()
                .scaledToFit()
                .frame(width: 30)
        }
    }
}

#Preview {
    ComponentscircleView(LoginImage: Image("Calendario"))
}
