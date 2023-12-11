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
                
                VStack{
                    HStack(spacing: 220){
                        
                        Image("Deleite")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 100)
                            .padding(.top)
                        
                        ComponentAlert()
                    }
                    
                    VStack(alignment: .leading){
                        Text("Seja bem vinda!")
                            .multilineTextAlignment(.leading)
                            .foregroundColor(Color("Text"))
                        
                        HStack{
                            Text("Você está no")
                                .multilineTextAlignment(.leading)
                                .foregroundColor(Color("Text"))
                            
                            Text("MEAC")
                                .fontWeight(.bold)
                                .multilineTextAlignment(.leading)
                                .foregroundColor(Color("Text"))
                            
                        }
                    }
                    .padding(.trailing, 190)
                    VStack{
                        ComponentDonationView(Logintitle: "Fazer \ndoação", Loginname: "Agende aqui o melhor \ndia para sua doação", LoginImage: Image("Doar"))
                        
                        Text("Agendamentos")
                            .multilineTextAlignment(.leading)
                            .font(.system(size: 25))
                            .fontWeight(.bold)
                            .padding(.leading, -150)
                            .padding(.top)
                            .foregroundColor(Color("Text"))
                    }
                        
//                        NavigationLink(destination: ComponentTextView()) {
//                            Text("Histórico")
//                                .padding(.top)
//                                .foregroundColor(.gray)
//                        }
                    
                    VStack{
                        ModelScheduling( openRegistrationSheet: $openRegistrationSheet)
                    }
                }
            }
        }
    }
}

#Preview {
    PostloginView()
}
