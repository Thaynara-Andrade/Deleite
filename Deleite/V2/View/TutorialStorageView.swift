//
//  TutorialStorageView.swift
//  Deleite
//
//  Created by Thaynara da Silva Andrade on 07/11/23.
//

import SwiftUI

struct TutorialStorageView: View {
    
    @State var openRegistrationSheet: Bool
    
    var body: some View {
        
        ZStack {
            ScrollView{
                Group{
                    VStack(alignment: .leading, spacing: 10){
                        Text("Armazenamento")
                            .font(Font.custom("SFProRounded-Heavy", size: 35))
                            .multilineTextAlignment(.leading)
                            .foregroundColor(Color("icon-color"))
                        
                        
                    Text("Esta é a forma correta de armazenamento do leite materno:")
                        .multilineTextAlignment(.leading)
                        
                    } .padding(.bottom, -10)
                    
                    VStack (spacing: -40){
                        ComponentTutorialClear(Tutorialtitle:"Primeiro passo", Tutorialdescription: "Após a retirada do leite, coloque o frasco no freezer e certifique que esteja bem tampado e devidamente etiquetado.", TutorialImage: Image("Ice"))
                        
                        ComponentTutorialClear(Tutorialtitle:"Segundo passo", Tutorialdescription: "O leite materno deve ser transportado a um Banco de Leite Humano antes do seu vencimento (até 15 dias após a primeira coleta).", TutorialImage: Image("Telefone"))
                    }
                    VStack {
                        ButtonView(ButtonView: "Agendar envio do leite", openRegistrationSheet: $openRegistrationSheet)
                            .padding(.top, 150)
                        
                    }
                }
            }
        }.navigationTitle("Tutorial")
    }
}


#Preview {
    TutorialStorageView(openRegistrationSheet: .random())
}
