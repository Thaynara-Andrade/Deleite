//
//  ContentView.swift
//  Deleite
//
//  Created by Thaynara da Silva Andrade on 11/09/23.
//

import SwiftUI

struct ContentView: View {
    @State private var index = 0
    var body: some View {
        VStack{
            TabView(selection: $index) {

                HStack(spacing: 2) {
                    ForEach((0..<3), id: \.self) {
                        index in Circle()
                            .fill(index == self.index ? Color.purple : Color.purple.opacity(0.5))
                            .frame(width: 20, height: 20)
                    }
                }
                .padding()
                
            }
            .tabViewStyle(PageTabViewStyle(indexDisplayMode: .always))
            .frame(height: 200)
        }
    }
}
            struct ContentView_Previews: PreviewProvider {
                static var previews: some View {
                    ContentView()
                }
            }
