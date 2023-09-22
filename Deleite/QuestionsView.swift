//
//  QuestionsView.swift
//  Deleite
//
//  Created by Thaynara da Silva Andrade on 12/09/23.
//

import SwiftUI

struct QuestionsView: View {
    @State private var isExpanded = Array(repeating: false, count: 10)
    
    var body: some View {
        VStack {
            List {
                Section {
                    DisclosureGroup("Pergunta Perguntas Pergunta?", isExpanded: $isExpanded[0])
                    {
                        Text("Resposta Resposta Resposta Resposta Resposta Resposta Resposta Resposta Resposta Resposta ")
                    }
                    
                    DisclosureGroup("Pergunta Perguntas Pergunta?", isExpanded: $isExpanded[1]) {
                        Text("Resposta Resposta Resposta Resposta Resposta Resposta Resposta Resposta Resposta Resposta ")
                    }
                    
                    DisclosureGroup("Pergunta Perguntas Pergunta?", isExpanded: $isExpanded[2]) {
                        Text("Resposta Resposta Resposta Resposta Resposta Resposta Resposta Resposta Resposta Resposta ")
                    }
                    
                    DisclosureGroup("Pergunta Perguntas Pergunta?", isExpanded: $isExpanded[3]) {
                        Text("Resposta Resposta Resposta Resposta Resposta Resposta Resposta Resposta Resposta Resposta ")
                    }
                    
                    DisclosureGroup("Pergunta Perguntas Pergunta?", isExpanded: $isExpanded[4]) {
                        Text("Resposta Resposta Resposta Resposta Resposta Resposta Resposta Resposta Resposta Resposta ")
                    }
                    DisclosureGroup("Pergunta Perguntas Pergunta?", isExpanded: $isExpanded[5]) {
                        Text("Resposta Resposta Resposta Resposta Resposta Resposta Resposta Resposta Resposta Resposta ")
                    }
                    DisclosureGroup("Pergunta Perguntas Pergunta?", isExpanded: $isExpanded[6]) {
                        Text("Resposta Resposta Resposta Resposta Resposta Resposta Resposta Resposta Resposta Resposta ")
                    }
                    DisclosureGroup("Pergunta Perguntas Pergunta?", isExpanded: $isExpanded[7]) {
                        Text("Resposta Resposta Resposta Resposta Resposta Resposta Resposta Resposta Resposta Resposta ")
                    }
                    DisclosureGroup("Pergunta Perguntas Pergunta?", isExpanded: $isExpanded[8]) {
                        Text("Resposta Resposta Resposta Resposta Resposta Resposta Resposta Resposta Resposta Resposta ")
                    }
                    DisclosureGroup("Pergunta Perguntas Pergunta?", isExpanded: $isExpanded[9]) {
                        Text("Resposta Resposta Resposta Resposta Resposta Resposta Resposta Resposta Resposta Resposta ")
                    }
                }
            }
            .navigationTitle("Dúvidas frequentes")
        }
    }
}
struct QuestionsView_Previews: PreviewProvider {
    static var previews: some View {
        QuestionsView()
    }
}
