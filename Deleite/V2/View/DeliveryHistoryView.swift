//
//  DeliveryHistoryView.swift
//  Deleite
//
//  Created by Marília de Sousa on 13/11/23.
//

import SwiftUI

struct DeliveryHistoryView: View {
    var body: some View {
        
        ScrollView {
            VStack(alignment: .leading, spacing: 20) {
             
                CardRealizada(cardTitle: "Entrega de leite materno", cardTitle2: "04 de outubro de 2023", cardTitle3: "Tarde", cardTitle4: "Status: Realizada", cardImage: Image(systemName: "checkmark.circle.fill"))
                
//                CardNãoRealizada(cardTitle: "Receimento de pote", cardTitle2: <#T##String#>, cardTitle3: <#T##String#>, cardTitle4: <#T##String#>, cardImage: <#T##Image#>)
                
            }
        }
    }
}
#Preview {
    DeliveryHistoryView()
}
