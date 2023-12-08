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
            VStack(alignment: .center) {
                
                Text("Seja doadora!")
                    .font(Font.custom("SFProRounded-Black", size: 35))
                    .foregroundStyle(Color("icon-color"))
                    .padding(.leading, -110)
                    .padding(.bottom, 05)
                  
                Text("Estamos muito felizes por ter você \naqui com a gente. Um tempinho que você dedica para doar um pouco do seu leite pode mudar a vida inteira de um bebê!")

                    .padding()
                
                Image(systemName: "person.line.dotted.person.fill")
                    .font(.system(size: 120))
                    .foregroundColor(Color("Buttonvariable-Color"))
                    .padding()
                    
                
                Text("Ao clicar no botão a baixo você será direciona ao WhatsApp do Banco de Leite Humano, tá? E seu cadastro será realizado.")
                    .multilineTextAlignment(.leading)

                    .padding()
                
                Button(action: {
                    if let whatsappURL = URL(string: "https://tinyurl.com/DOAR-LEITE-MEAC-BLH-UFC") {
                        UIApplication.shared.open(whatsappURL)
                    }
                }) {
                        
                    Text("Cadastre-se")
                        .fontWeight(.semibold)
                        .frame(width: 326, alignment: .center)
                        .padding()
                            .background(Color("icon-color"))
                            .foregroundColor(Color.white)
                            .cornerRadius(15)
    
                }
                .padding(.top, 20)
                .padding(.bottom, -20)
                
                
                
            }
        } 
        .padding(.top, -200)
    }
}
    

#Preview {
    RegistrationWhatsView()
}
