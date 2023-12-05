//
//  PostloginView.swift
//  Deleite
//
//  Created by Thaynara da Silva Andrade on 20/10/23.
//

import SwiftUI

struct PostloginView: View {
    
    @State private var showAlert = false
    @State var openRegistrationSheet = false
    
    var body: some View {
        
        NavigationView{
            ScrollView{
                ZStack{
                    
                    VStack(alignment: .leading) {
                        HStack(spacing: 220){
                            
                            Image("Deleite")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 100)
                                .padding(.top)
                            
                            ComponentAlert()
                        }
                        
                        Text("Seja bem vinda!")
                        
                        HStack{
                            Text("Você está no")
                            
                            Text("MEAC")
                                .fontWeight(.bold)
                            
                        }
                        
                        ComponentDonationView(Logintitle: "Fazer \ndoação", Loginname: "Agende aqui o melhor \ndia para sua doação", LoginImage: Image("Doar"))
                        
                        
                        HStack (spacing: 100) {
                            Text(" Agendamentos")
                                .font(.system(size: 25))
                                .fontWeight(.bold)
                                .padding(.top)
                            
                            NavigationLink(destination: ComponentTextView()) {
                                Text("Histórico")
                                    .padding(.top)
                                    .foregroundColor(.gray)
                            }
                        }
                    }
                    
                    ModelScheduling()
                        .padding(.bottom,-230)
                }
            }
        }
    }
}

#Preview {
    PostloginView()
}
