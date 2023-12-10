//
//  TutorialStorageView.swift
//  Deleite
//
//  Created by Thaynara da Silva Andrade on 07/11/23.
//

import SwiftUI

struct TutorialStorageView: View {
    
    @Binding var openRegistrationSheet: Bool
    
    var body: some View {
        
        ZStack {
            ScrollView{
                Group{
                    VStack(alignment: .leading, spacing: 10){
                        Text("Armazenamento")
                            .font(Font.custom("SFProRounded-Heavy", size: 35))
                            .multilineTextAlignment(.leading)
                            .foregroundColor(Color("icon-color"))
                        
                    } .padding(.bottom, -10)
                    
                    VStack(spacing: -40){
                        ComponentTutorialClear(Tutorialtitle:"Primeiro passo", Tutorialdescription: "Após a retirada do leite, coloque o frasco no freezer e certifique que esteja bem tampado e devidamente etiquetado.", TutorialImage: Image("Ice"))
                        
                        ComponentTutorialClear(Tutorialtitle:"Segundo passo", Tutorialdescription: "O leite materno deve ser transportado a um Banco de Leite Humano antes do seu vencimento (até 15 dias após a primeira coleta).", TutorialImage: Image("Telefone"))
                    }
                    
                    VStack {
                        ButtonView(ButtonView: "Agendar envio do leite", openRegistrationSheet: $openRegistrationSheet)
                            .padding(.top, 150)
                        
                    }
                }
            }
        }
        .navigationTitle("Armazenamento")
        .navigationBarTitleDisplayMode(.large)
        .toolbar {
            ToolbarItem(placement: .navigationBarTrailing) {
                Button("Cancelar") {
                    openRegistrationSheet = false
                    print("Botão Cancelar pressionado")
                }
            }
        }
    }
}


#Preview {
    TutorialStorageView(openRegistrationSheet: .constant(true))
}
