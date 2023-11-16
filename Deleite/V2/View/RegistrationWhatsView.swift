//
//  RegistrationWhatsView.swift
//  Deleite
//
//  Created by Marília de Sousa on 31/10/23.
//

import SwiftUI

struct RegistrationWhatsView: View {
    
    var body: some View {
       
        ZStack{
            Color("Background-color")
                .edgesIgnoringSafeArea(.all)
            
            VStack(alignment: .center) {
                
                Text("Êba! Você veio!")
                    .font(Font.custom("SFProRounded-Black", size: 35))
                    .foregroundStyle(Color("icon-color"))
                    .padding(.leading, -80)
                    .padding(.top, 50)
                    .padding(.bottom, -10)
                  
                Text("Estamos muito felizes por ter você \naqui com a gente. Um tempinho que você dedica para doar um pouco do seu leite pode mudar a vida inteira de um bebê!")
                    .font(.bold(.title3)())
                    .padding()
                
                Image(systemName: "person.bubble")
                    .font(.system(size: 140))
                    .foregroundColor(Color("Buttonvariable-Color"))
                    .padding()
                    
                
                Text("Ao clicar no botão a baixo você será direciona ao WhatsApp do Banco de Leite Humano, tá? E seu cadastro será realizado por lá.")
                    .multilineTextAlignment(.leading)
                    .font(.bold(.title3)())
                    .padding()
                
                Button(action: {
                    if let whatsappURL = URL(string: "https://tinyurl.com/DOAR-LEITE-MEAC-BLH-UFC") {
                        UIApplication.shared.open(whatsappURL)
                    }
                }) {
                        
                    Text("Realizar Cadastro")
                        .fontWeight(.semibold)
                        .frame(width: 326, alignment: .center)
                        .padding()
                            .background(Color("icon-color"))
                            .foregroundColor(Color.white)
                            .cornerRadius(15)
    
                }
                .padding(.top)
                .padding(.bottom,-30)
                
                
                
            }
        } .padding(.top, -100)
    }
}
    

#Preview {
    RegistrationWhatsView()
}
