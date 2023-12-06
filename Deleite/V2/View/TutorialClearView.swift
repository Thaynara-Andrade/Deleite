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
                    VStack (alignment: .leading, spacing: 10){
                        Text("Higienização")
                            .font(Font.custom("SFProRounded-Heavy", size: 35))
                            .multilineTextAlignment(.leading)
                            .padding(.leading)
                            .foregroundColor(Color("icon-color"))
                        
                        Text("Esta é a forma correta da higienização antes da coleta do leite")
                            .multilineTextAlignment(.leading)
                            .padding(.leading)
                    } .padding(.bottom, -10)
    
                    VStack (spacing: -40){
                        ComponentTutorialClear(Tutorialtitle:"Primeiro passo", Tutorialdescription: "Lave um frasco de vidro com tampa de plástico, retirando o rótulo e o papel de dentro da tampa e enxague para a remoção de resíduos.", TutorialImage: Image("pote"))
                        
                        ComponentTutorialClear(Tutorialtitle:"Segundo passo", Tutorialdescription: "Os coloque numa panela com água, cobrindo-os completamente. Ferva-os. 15 min após a fervura, desligue  o fogo e retire-os da água.", TutorialImage: Image("Panela"))
                        
                        ComponentTutorialClear(Tutorialtitle:"Terceiro passo", Tutorialdescription: "Espere esfriar, seque, feche o frasco sem tocar na parte interna da tampa. Agora cubra os cabelos e use máscara para retirar o leite.", TutorialImage: Image("Mao"))
                    
                    }
                    VStack{
                        NavigationLink(destination: TutorialMilkView(openRegistrationSheet: .random())){
                            ButtonNextView(ButtonNext: "Próximo tutorial")
                               
                            
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
