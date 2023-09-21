//
//  CarouselTutorial.swift
//  Deleite
//
//  Created by Marília de Sousa on 13/09/23.
//

//import SwiftUI
//
//struct CarouselTutorial: View {
//    
//    var body: some View {
//        ScrollView {
//            LazyHStack {
//                
//                PageView()
//            }
//        }
//    }
//}
//
//struct CarouselTutorial_Previews: PreviewProvider {
//    static var previews: some View {
//        CarouselTutorial()
//    }
//}
//
//struct PageView: View {
//    @State private var index = 0
//    var body: some View {
//        VStack {
//            Spacer()
//            TabView(selection: $index) {
//                ForEach(0..<5) { i in
//                        Image("mama")
//                            .resizable()
//                            .cornerRadius(26)
//                            .padding(.horizontal, 18)
//                   
//                }
//            }
//            
//            .frame(width: UIScreen.main.bounds.width, height: 500)
//                    .padding(.top, 80)
//            
//            .tabViewStyle(PageTabViewStyle(indexDisplayMode: .never))
//            
//            HStack(spacing: 8) {
//                ForEach((0..<5), id: \.self) { index in
//                    Circle()
//                        .fill(index == self.index ? Color("Text-Color") : Color("Text-Color").opacity(0.5))
//                        .frame(width: 12, height: 12)
//
//                }
//            }
//            .padding()
//            
//            Button(action: {
//            
//                    }) {
//                            Image(systemName: "arrow.left")
//                            Color("Text-Color")
//                            .frame(width: 20, height: 20)
//                            .padding(.horizontal, 140)
//
//                    
//                    }
//        }
//        
//
//    }
//}
