//
//  History.swift
//  Deleite
//
//  Created by Marília de Sousa on 14/11/23.
//

import SwiftUI

struct History: View {
    
    let historyTitle: String
    let historyTitle2: String
    let historyTitle3: String
    let historyTitle4: String
    let historyImage: Image
    let historyImage2: Image
    
    init(historyTitle: String, historyTitle2: String, historyTitle3: String, historyTitle4: String, historyImage: Image, historyImage2: Image) {
        self.historyTitle = historyTitle
        self.historyTitle2 = historyTitle2
        self.historyTitle3 = historyTitle3
        self.historyTitle4 = historyTitle4
        self.historyImage = historyImage
        self.historyImage2 = historyImage2
    }
    
    var body: some View {
        
        ZStack {
            Rectangle()
                .frame(width: 356, height: 157)
                .foregroundColor(Color(.white))
                .cornerRadius(14)
                .shadow(color: Color.gray.opacity(0.4), radius: 10)
            
            Text(historyTitle)
                .font(Font.custom("SFProRounded-Black", size: 22))
                .multilineTextAlignment(.leading)
                .padding(.top, -60)
                .padding(.leading, -70)
                .foregroundColor(Color("icon-color")).padding()
            
            Text(historyTitle2)
                .font(.title2)
                .padding(.top, -28)
                .padding(.leading, -160)
                .foregroundColor(Color("icon-color"))
            
            Text(historyTitle3)
                .font(.title2)
                .padding(.top, 30)
                .padding(.leading, -160)
                .foregroundColor(Color("icon-color"))
            
            HStack {
                
                historyImage
                    .resizable()
                    .scaledToFit()
                    .foregroundColor(Color("icon-color"))
                    .frame(width: 20)
                
                Text(historyTitle4)
                    .font(.title3)
            }
            .padding(.leading, -140)
            .padding(.top, 110)

            
        }
    }
}


#Preview {
    History(historyTitle: "Coleta de Leite Materno", historyTitle2 :"21 de Abril", historyTitle3: "Manhã", historyTitle4: "Status: Realizada",historyImage: Image(systemName: "checkmark.circle.fill"), historyImage2: Image(systemName: ""))
}
