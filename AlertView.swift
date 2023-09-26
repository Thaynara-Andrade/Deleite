//
//  AlertView.swift
//  Deleite
//
//  Created by Thaynara da Silva Andrade on 22/09/23.
//

import SwiftUI

struct AlertView: View {
    @State private var showAlert = false

    var body: some View {
                
                Button(action: {
                    showAlert = true
                }) {
                    Text("Mostrar Alerta")
                    Image("Agendar coleta")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 110)
                        .position(x:93, y:134)
            }
        .alert(isPresented: $showAlert) {
            Alert(
                title: Text("Em Construção"),
                message: Text("Esta tela ainda está em desenvolvimento."),
                dismissButton: .default(Text("OK"))
                
            )
        }
    }
}

struct AlertView_Previews: PreviewProvider {
    static var previews: some View {
        AlertView()
    }
}
