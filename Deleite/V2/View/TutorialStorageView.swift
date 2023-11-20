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
                    
                    Text("Esta é a forma correta de armazenamento do leite materno:")
                        .multilineTextAlignment(.leading)
                        .padding(.bottom, -10)
                    
                    VStack {
                        ComponentTutorialClear(Tutorialtitle:"Primeiro passo", Tutorialdescription: "Após a retirada do leite materno, coloque o frasco no freezer ou congelador, garantindo que seja armazenado em recipientes adequados e devidamente etiquetado.", TutorialImage: Image("Rotulo"))
                            .padding(.bottom, -20)
                        
                        ComponentTutorialClear(Tutorialtitle:"Segundo passo", Tutorialdescription: "O leite materno deve ser transportado a um Banco de Leite Humano antes do seu vencimento, Que é até 15 dias após a primeira coleta.", TutorialImage: Image("Telefone"))
                            .padding(.bottom, -20)
                        
                        ComponentBottomless(Buttomless: "Fazer agendamento", openRegistrationSheet: $openRegistrationSheet)
                            .padding(.top, 250)
                        
                    }
                }
            }
        }.navigationTitle("Armazenamento")
    }
}


#Preview {
    TutorialStorageView(openRegistrationSheet: .random())
}
