//
//  TutorialScroll.swift
//  Deleite
//
//  Created by Marília de Sousa on 20/09/23.
//

import SwiftUI

struct TutorialScroll: View {
    
    @State var currentIndex: Int = 0
    
    @State var posts:[Post] = []
    var body: some View {
        
        VStack(spacing: 15) {
            VStack(alignment: .leading, spacing: 12) {
                
                Text("Higienização")
                    .font(.largeTitle)
                    .fontWeight(.black)
            }
            .frame(maxWidth: .infinity, alignment: .leading)
            .padding()
            
           
            SnapCarousel(index: $currentIndex, items: posts){
                post in
                GeometryReader { proxy in
                    let size = proxy.size
                    Image(post.postImagem)
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: size.width)
                        .cornerRadius(12)
                }
              
            }
            .padding(.vertical, 2)
            HStack(spacing: 10) {
                ForEach(posts.indices, id: \.self) { index in
                    Circle()
                        .fill(Color.teal.opacity(currentIndex == index ? 1 : 0.1 ))
                        .frame(width: 10, height: 10)
                        .scaleEffect(currentIndex == index ? 1.4 : 1)
                        .animation(.spring(), value: currentIndex == index)
                        
                }
            }
        }
        .frame(maxHeight: .infinity, alignment: .top)
        .padding()
        
    }
}
struct TutorialScroll_Previews: PreviewProvider {
    static var previews: some View {
        TutorialScroll()
    }
}
