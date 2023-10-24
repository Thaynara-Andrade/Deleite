//
//  ContainerOptionView.swift
//  Deleite
//
//  Created by Raina on 23/10/23.
//

import SwiftUI


struct ContainerOptionView: View {
    
    @State var isShowTesteView: Bool = false
    
    var body: some View {
        NavigationView{
            ZStack{
                Color("Text-Color")
                    .ignoresSafeArea(.all)
                VStack{
                    HStack(alignment: .center, spacing: 10) {
                        NavigationLink(destination: PostloginView()) {
                            Text("Já tenho fraco de vidro")
                            .font(
                            Font.custom("SF Pro Text", size: 17)
                            .weight(.semibold)
                            )
                            .multilineTextAlignment(.center)
                            .foregroundColor(Color("Text-Color"))
                        }
                    }
                    .padding(.horizontal, 20)
                    .padding(.vertical, 13)
                    .frame(width: 326, alignment: .center)
                    .background(Color(red: 0.95, green: 0.87, blue: 0.62))
                    .cornerRadius(15)
                    
                    HStack(alignment: .center, spacing: 10) {
                        NavigationLink(destination: PostloginView()) {
                            Text("Não tenho frasco")
                            .font(
                            Font.custom("SF Pro Text", size: 17)
                            .weight(.semibold)
                            )
                            .multilineTextAlignment(.center)
                            .foregroundColor(Color("Text-Color"))
                        }
                        
                    }
                    .padding(.horizontal, 20)
                    .padding(.vertical, 13)
                    .frame(width: 326, alignment: .center)
                    .background(Color(red: 0.95, green: 0.87, blue: 0.62))
                    .cornerRadius(15)
                }
                
            }
            .padding(.bottom, -307)
        }
    }
}
#Preview {
    ContainerOptionView()
}


