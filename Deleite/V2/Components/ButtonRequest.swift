//
//  ButtonRequest.swift
//  Deleite
//
//  Created by Raina on 10/12/23.
//

import SwiftUI

struct ButtonRequest: View {
    
    @Binding var exibirSheet:Bool
    @Binding var showModal: Bool
    
    var body: some View {
        Button(action: {
            exibirSheet.toggle()
        }) {
            Text("Como foi a coleta?")
                .fontWeight(.semibold)
                .frame(width: 280, height: 14)
                .padding()
                .background(Color("Button-Yellow"))
                .foregroundColor(Color("Text-Color"))
                .cornerRadius(15)
        }
        .padding(.top)
        RequestDetailsView(isShowing: $showModal)
    }
}

//#Preview {
//    ButtonRequest(exibirSheet: .constant(true), isShowing: .constant(true))
//}
