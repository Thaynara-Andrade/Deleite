//
//  TutorialClearView.swift
//  Deleite
//
//  Created by Thaynara da Silva Andrade on 06/11/23.
//

import SwiftUI

struct TutorialClearView: View {
    
    @State var openRegistrationSheet: Bool
    
    var body: some View {
        
        ZStack {
            ScrollView{
                Group{
                    VStack (alignment: .leading){
                        Text("Higienização")
                            .font(Font.custom("SFProRounded-Heavy", size: 35))
                            .multilineTextAlignment(.leading)
                            .padding(.leading)
                            .foregroundColor(Color("icon-color"))
                        
                        Text("Esta é a forma correta da higienização antes da coleta do leite")
                            .multilineTextAlignment(.leading)
                            .padding(.leading)
                    }
                    
    
                    VStack {
                        ComponentTutorialClear(Tutorialtitle:"Primeiro passo", Tutorialdescription: "Lave um frasco de vidro com tampa de plástico (do tipo café solúvel), retirando o rótulo e o papel de dentro da tampa e enxague para a remoção de resíduos.", TutorialImage: Image("pote"))
                            .padding(.bottom, -20)
                        
                        ComponentTutorialClear(Tutorialtitle:"Segundo passo", Tutorialdescription: "Coloque os itens em uma panela com água, cobrindo-os completamente. Ferva-os. 15 min após a fervura, desligue  o fogo e retire o pote e a tampa da água.", TutorialImage: Image("Panela"))
                            .padding(.bottom, -20)
                        
                        ComponentTutorialClear(Tutorialtitle:"Terceiro passo", Tutorialdescription: "Espere esfriar, seque, feche o frasco sem tocar na parte interna da tampa. Agora cubra os cabelos e use máscara para retirar o leite.", TutorialImage: Image("Mao"))
                            .padding(.bottom, -20)
                        
                        NavigationLink(destination: TutorialMilkView(openRegistrationSheet: .random())){
                            ButtonNextView(ButtonNext: "Próximo tutorial")
                                .padding(.top, 30)
                            
                        }
                        ComponentBottomless(Buttomless: "Fazer agendamento", openRegistrationSheet: $openRegistrationSheet)
                        
                    }
                }.navigationTitle("Tutorial")
            }
        }
    }
}


#Preview {
    TutorialClearView(openRegistrationSheet: .random())
}
