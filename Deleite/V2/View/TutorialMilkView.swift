//
//  TutorialMilkView.swift
//  Deleite
//
//  Created by Thaynara da Silva Andrade on 07/11/23.
//

import SwiftUI

struct TutorialMilkView: View {
    
    @State var openRegistrationSheet: Bool
    
    var body: some View {
        
        ZStack {

            ScrollView{
                Group{
                    Text("Esta é a forma correta para realizar a retirada de leite:")
                        .multilineTextAlignment(.leading)
                        .padding(.bottom, -10)
                    
                    VStack {
                        ComponentTutorialClear(Tutorialtitle:"Primeiro passo", Tutorialdescription: "Escolha um local tranquilo e limpo. Prepare uma mesa com um pano limpo e evite conversas durante a retirada do leite, proporcionando assim um ambiente sereno e concentrado.", TutorialImage: Image("Sofa"))
                            .padding(.bottom, -20)
                        
                        ComponentTutorialClear(Tutorialtitle:"Segundo passo", Tutorialdescription: "Massageie a mama em círculos, do mamilo para o corpo, com o polegar acima da auréola, promovendo uma técnica suave para estimular a produção de leite de forma confortável.", TutorialImage: Image("peito1"))
                            .padding(.bottom, -20)
                        
                        ComponentTutorialClear(Tutorialtitle:"Terceiro passo", Tutorialdescription: "Extraia o leite com a mão em C. Descarte os primeiros jatos  e despeje no frasco o leite retirado. Após isso feche, rotule com os dados e congele no freezer.", TutorialImage: Image("Rotulo"))
                            .padding(.bottom, -20)
                        
                        NavigationLink(destination: TutorialStorageView(openRegistrationSheet: openRegistrationSheet)){
                            ButtonNextView(ButtonNext: "Próximo tutorial")
                                .padding(.top, 40)
                            
                        }
                        ComponentBottomless(Buttomless: "Fazer agendamento", openRegistrationSheet: $openRegistrationSheet)
                        
                    }
                }.navigationTitle("Retirada de Leite")
            }
        }
    }
}


#Preview {
    TutorialMilkView(openRegistrationSheet: .random())
}
