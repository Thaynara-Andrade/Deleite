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
                        DisclosureGroup("Quem pode doar leite materno?", isExpanded: $isExpanded[0])
                        {
                            Text("Toda mulher que amamenta é uma possível doadora. Basta ser saudável e não tomar medicamentos que interfiram na amamentação.").foregroundColor(.gray)
                            
                        }
                        
                        DisclosureGroup("Existe quantidade mínima para doação?", isExpanded: $isExpanded[1]) {
                            Text("Qualquer quantidade de leite humano pode ajudar bebês internados em unidades neonatais a terem melhor recuperação e uma vida mais saudável. Dependendo do peso do recém-nascido, apenas 1 ml já é suficiente para nutri-lo a cada refeição.") .foregroundColor(.gray)
                        }
                        
                        DisclosureGroup("É possível extrair o leite materno em casa?", isExpanded: $isExpanded[2]) {
                            Text("Sim. O leite materno pode ser extraído em casa e armazenado em frascos de vidro com tampas plásticas previamente esterilizados. Você pode acompanhar o passar a passo, na opção Tutorial.") .foregroundColor(.gray)
                        }
                        
                        DisclosureGroup("É possível extrair diretamente no Banco de Leite?", isExpanded: $isExpanded[3]) {
                            Text("A extração de leite humano pode ser realizada nos Bancos de Leite Humano, Postos de Coleta de Leite Humano ou a doadora pode realizar a extração no seu domicílio, seguindo todas as orientações de higiene e armazenamento dadas pelos profissionais de saúde.") .foregroundColor(.gray)
                        }
                        
                        DisclosureGroup("Que quantidade do frasco deve ser preenchida?", isExpanded: $isExpanded[4]) {
                            Text("O frasco pode ser preenchido até 2 dedos da borda e também é possível usar o mesmo frasco para coletas diferentes.") .foregroundColor(.gray)
                        }
                        DisclosureGroup("Quem recebe o leite doado?", isExpanded: $isExpanded[5]) {
                            Text("Os recém-nascidos prematuros e/ou de baixo peso que estão internados em Unidades de Terapia Intensiva (UTIs) neonatais brasileiras e não podem ser amamentados pela própria mãe.") .foregroundColor(.gray)
                        }
                        DisclosureGroup("O que fazer caso o frasco não tenha sido preenchido em somente uma extração?", isExpanded: $isExpanded[6]) {
                            Text("Deve-se colocar o leite materno retirado num copo de vidro, devidamente esterilizado, e depois adicionar ao frasco de leite materno que já está congelado.").foregroundColor(.gray)
                        }
                        DisclosureGroup("A doação pode levar à escassez de leite para o próprio bebê?", isExpanded: $isExpanded[7]) {
                            Text("Não. Sempre que o bebê mama ou o leite materno é extraído, mais leite é produzido.") .foregroundColor(.gray)
                        }
                    }
                }
                .navigationBarTitle("Dúvidas frequentes", displayMode: .inline)
                
                Button(action: {
                    if let whatsappURL = URL(string: "https://tinyurl.com/DOAR-LEITE-MEAC-BLH-UFC") {
                        UIApplication.shared.open(whatsappURL)
                    }
                }) {
                    VStack{
                        Text("Fale agora com o Banco de Leite")
                            .foregroundColor(Color.gray)
                        
                        Text("Tirar dúvidas")
                            .font(.title3)
                            .fontWeight(.heavy)
                            .padding()
                            .background(Color("Text-Color"))
                            .foregroundColor(.white)
                            .cornerRadius(10)
                        
                    }
                }
                .padding()
            }
    }
}

struct QuestionsView_Previews: PreviewProvider {
    static var previews: some View {
        QuestionsView()
    }
}
