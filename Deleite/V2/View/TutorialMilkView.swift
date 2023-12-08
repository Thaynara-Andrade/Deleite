//
//  TutorialMilkView.swift
//  Deleite
//
//  Created by Thaynara da Silva Andrade on 07/11/23.
//

import SwiftUI

struct TutorialMilkView: View {
    
    @Binding var openRegistrationSheet: Bool
    
    var body: some View {
        
        ZStack {
            
            ScrollView{
                Group{
                    VStack(alignment: .leading, spacing: 10){
                        Text("Retirada de leite")
                            .font(Font.custom("SFProRounded-Heavy", size: 35))
                            .multilineTextAlignment(.leading)
                            .foregroundColor(Color("icon-color"))
                        
                        Text("Esta é a forma correta para realizar a retirada de leite:")
                            .multilineTextAlignment(.leading)
                        
                    } .padding(.bottom, -10)
                    
                    VStack (spacing: -40){
                        ComponentTutorialClear(Tutorialtitle:"Primeiro passo", Tutorialdescription:"Escolha um ambiente tranquilo e limpo. Prepare uma mesa com um pano limpo. Evite conversar durante a retirada do leite.", TutorialImage: Image("Sofa"))
                        
                        ComponentTutorialClear(Tutorialtitle:"Segundo passo", Tutorialdescription: "Massageie a mama em círculos, do mamilo para o corpo, com o polegar acima da auréola, para estimular a produção de leite.", TutorialImage: Image("peito1"))
                        
                        ComponentTutorialClear(Tutorialtitle:"Terceiro passo", Tutorialdescription: "Extraia o leite com a mão em C. Descarte os primeiros jatos. Despeje no frasco, feche, rotule com nome e data, e congele.", TutorialImage: Image("Rotulo"))
                        
                    }
                    VStack{
                        NavigationLink(destination: TutorialStorageView(openRegistrationSheet: $openRegistrationSheet)){
                            ButtonNextView(ButtonNext: "Próximo tutorial")
                            
                        }
                        .toolbar {
                            ToolbarItem(placement: .navigationBarTrailing) {
                                Button("Cancelar") {
                                    openRegistrationSheet = false
                                }
                            }
                        }
                        ComponentBottomless(Buttomless: "Fazer agendamento", openRegistrationSheet: $openRegistrationSheet)
                        
                    }
                }
                .navigationTitle("Retirada de Leite")
                .navigationBarTitleDisplayMode(.large)
            }
        }
    }
}


#Preview {
    TutorialMilkView(openRegistrationSheet: .constant(true))
}
