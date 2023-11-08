//
//  TutorialStorageView.swift
//  Deleite
//
//  Created by Thaynara da Silva Andrade on 07/11/23.
//

import SwiftUI

struct TutorialStorageView: View {
    var body: some View {
        
        ZStack {
          
            ScrollView{
                Group{
                    Text("Esta é a forma correta de armazenamento do leite materno:")
                        .padding(.bottom, -10)
                        .foregroundColor(.black)
                    
                    VStack {
                        ComponentTutorialClear(Tutorialtitle:"Primeiro passo", Tutorialdescription: "Lave um frasco de vidro de boca larga com tampa de plástico (do tipo café solúvel), retirando o rótulo e o papel de dentro da tampa.kakakakakakkaakaka kkakaakakakkakaka", TutorialImage: Image("pote"))
                            .padding(.bottom, -20)
                        
                        ComponentTutorialClear(Tutorialtitle:"Segundo passo", Tutorialdescription: "Após realizar o procedicmento, coloque o frasco e a tampa numa panela com água, cobrindo-os completamente. Ferva-os. Conte 15 minutos a partir do início da fervura.", TutorialImage: Image("Panela"))
                            .padding(.bottom, -20)
                        
                        ComponentTutorialClear(Tutorialtitle:"Terceiro passo", Tutorialdescription: "Agora é necessário , escorrer o frasco e a tampa com a abertura voltada para baixo, sobre um pano limpo, até secar. Feche o frasco sem tocar na parte interna da tampa. ", TutorialImage: Image("Mao"))
                            .padding(.bottom, -20)
                        
                        NavigationLink(destination: TutorialMilkView()){
                            ButtonNextView(ButtonNext: "Ir para agendamentos")
                                .padding(.top, 40)
                            
                        }
                    }
                }.navigationTitle("Armazenamento")
            }
        }
    }
}


#Preview {
    TutorialStorageView()
}
