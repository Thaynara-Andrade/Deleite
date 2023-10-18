////
////  HomeImage.swift
////  Deleite
////
////  Created by Thaynara da Silva Andrade on 19/09/23.
////
//import SwiftUI
//
//struct HomeImage: View {
//    
//    let image: Image
//    
//    init(image: Image) {
//        self.image = image
//    }
//    
//    var body: some View {
//        
//        ZStack {
//            
//            HStack {
//                image
//                    .resizable()
//                    .aspectRatio(contentMode: .fill)
//                    .frame(width: 110, height: 110)
//                    .multilineTextAlignment(.leading)
//            }
//        }
//        
//    }
//}
//
//struct HomeImage_Previews: PreviewProvider {
//    static var previews: some View {
//        HomeImage(image:Image("Agendar coleta"))
//    }
//}
