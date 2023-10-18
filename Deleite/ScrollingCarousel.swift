//
//  Tutoriais.swift
//  Deleite
//
//  Created by Marília de Sousa on 19/09/23.
//

//import SwiftUI
//
//struct ScrollingCarousel: View {
//    let cards = [Card(), Card(), Card(), Card(), Card(),]
//    @State private var screenWidth: CGFloat = 0
//    @State private var cardHeight: CGFloat = 0
//    var body: some View {
//        GeometryReader { reader in
//        ZStack {
//            ForEach(cards, id: \.id) { card in
//                VStack {
//                    Text("Tutorial")
//                }
//            }
//        }
//        .onAppear{
//            screenWidth = reader.size.width
//        }
//    }
//    }
//}
//
//struct ScrollingCarousel_Previews: PreviewProvider {
//    static var previews: some View {
//        ScrollingCarousel()
//    }
//}
//
//struct Card {
//    let id = UUID()
//    let colors: [Color] = [.purple, .green, .black, .blue, .gray]
//}
