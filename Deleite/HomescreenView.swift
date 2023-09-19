//
//  HomescreenView.swift
//  Deleite
//
//  Created by Thaynara da Silva Andrade on 18/09/23.
//
import SwiftUI

struct HomescreenView: View {
    @StateObject private var vm = LocationsViewModel()
    
    
    let gridSpacingh: CGFloat = 13
    let gridSpacingv: CGFloat = -10
    let columnCount: Int = 2
    @State private var showWebView = false

    var body: some View {
        NavigationView {
            VStack(alignment: .leading) {
                Text("Seja bem vinda, ao Deleite!")
                    .font(.headline)
                    .foregroundColor(Color.gray)
                    .multilineTextAlignment(.leading)
                    .padding(.leading, 15)
                
                ScrollView(.vertical) {
                    LazyVGrid(columns: Array(repeating: GridItem(.flexible(), spacing: gridSpacingv), count: columnCount), spacing: gridSpacingh ) {
                        Group {
                            NavigationLink(destination: LocationsView()
                                .environmentObject(vm)) {
                                HomeButton(HometitleButton: "Banco \nde leite",
                                           HomecolorButton: Color("Button-Color"),
                                           HometitleColor: Color.white)
                            }
                            NavigationLink(destination: TutorialView()) {
                                HomeButton(HometitleButton: "Tutorial",
                                           HomecolorButton: Color("Button-Color"),
                                           HometitleColor: Color.white)
                            }
                            NavigationLink(destination: QuestionsView()) {
                                HomeButton(HometitleButton: "Perguntas \nfrequentes",
                                           HomecolorButton: Color("Button-Color"),
                                           HometitleColor: Color.white)
                            }
                            NavigationLink(destination: SchedulingView()) {
                                HomeButton(HometitleButton: "Agendar \ncoleta",
                                           HomecolorButton: Color("Button-Color"),
                                           HometitleColor: Color.white)
                            }
                        }
                    } .padding()
                    
                    NavigationLink("", destination: WebView(urlString: "https://wa.me/message/O2WSGGAHTPI7G1"), isActive: $showWebView)
                    
                    Button(action: {
                        showWebView = true
                    }) {
                        VStack(alignment: .leading) {
                            Text("Doe Aqui")
                                .font(.largeTitle)
                                .fontWeight(.heavy)
                                .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                                .frame(width: 315, height: 140)
                                .padding(.leading, 20)
                                .background(Color("Text-Color"))
                                .foregroundColor(.white)
                                .cornerRadius(15)
                        }
                    }
                    .padding(-17)
                }
            }
            .navigationTitle("Menu inicial")
        }
    }
}

struct HomescreenView_Previews: PreviewProvider {
    static var previews: some View {
        HomescreenView()
    }
}
