//
//  ComponentAlert.swift
//  Deleite
//
//  Created by Thaynara da Silva Andrade on 05/12/23.
//

import SwiftUI

struct ComponentAlert: View {
    @State private var showAlert = false
    
    var body: some View {
        
        Button(action: {
            self.showAlert = true
        }) {
            Image(systemName: "questionmark.circle")
                .font(.system(size: 24))
                .foregroundColor(Color("icon-color"))
             
            
        } .alert(isPresented: $showAlert) {
            Alert(
                title: Text("Ajuda"),
                message: Text("Para obter suporte, entre em \ncontato no botão abaixo"),
                primaryButton: .default(Text("Falar com Suporte"), action: {
                    
                    if let url = URL(string: "https://christianpaulo.com.br/deleite/") {
                        UIApplication.shared.open(url)
                    }
                }),
                secondaryButton: .cancel(Text("Cancelar"))
            )
        }
    }
}

#Preview {
    ComponentAlert()
}
