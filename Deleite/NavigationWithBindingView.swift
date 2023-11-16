//
//  NavigationWithBindingView.swift
//  Deleite
//
//  Created by Raina on 14/11/23.
//
import Foundation
import SwiftUI

struct NavigationWithBindingView: View {
    
    @State var showSheet: Bool = false
    
    var body: some View {
        VStack {
            Text("Root")
            Button("Next") {
                showSheet = true
            }
        }
        .sheet(isPresented: $showSheet) {
            FirstScreen(showSheet: $showSheet)
        }
    }
}

struct FirstScreen: View {
    
    @State var goToSecondScreen: Bool = false
    @Binding var showSheet: Bool
    
    var body: some View {
        NavigationView {
            VStack {
                Text("First Screen")
                NavigationLink(isActive: $goToSecondScreen) {
                    SecondScreen(showSheet: $showSheet)
                } label: {
                    Text("Next")
                }
            }
        }
    }
}

struct SecondScreen: View {
    
    @Binding var showSheet: Bool
 
    var body: some View {
        VStack {
            Text("Second Screen")
            Button("End") {
                showSheet = false
            }
        }
    }
}

#Preview {
    NavigationWithBindingView()
}
