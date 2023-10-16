//
//  ConstructionView.swift
//  Deleite
//
//  Created by Thaynara da Silva Andrade on 09/10/23.
//

import SwiftUI

struct ConstructionView: View {
    @Environment(\.dismiss) private var dismiss

    
    @State var isEndedFirst: Bool = true
    
    var body: some View {
        ZStack {
            LottieView(name: "TwitterHeart", loopMode: .loop)
        }
        
        .navigationBarBackButtonHidden(true)
        .onChange(of: isEndedFirst) { newValue in
            dismiss()
        }
    }

    struct ConstructionView_Previews: PreviewProvider {
        static var previews: some View {
            ConstructionView()
        }
    }
}
