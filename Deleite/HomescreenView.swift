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
                    .foregroundColor(Color.gray)
                    .multilineTextAlignment(.leading)
                    .padding(.leading, 17)
                
                ScrollView(.vertical) {
                    LazyVGrid(columns: Array(repeating: GridItem(.flexible(), spacing: gridSpacingv), count: columnCount), spacing: gridSpacingh ) {
                        
                        Group {
<<<<<<< Updated upstream
                            NavigationLink(destination: LocationsView()
                                .environmentObject(vm)) {
                                HomeButton(HometitleButton: "Banco \nde leite",
                                           HomecolorButton: Color("Button-Color"),
                                           HometitleColor: Color.white)
                            }
=======
                                NavigationLink(destination:
                                                MilkBanckView()) {
                                    ZStack{
                                        HomeButton(HometitleButton: "Banco \nde leite",
                                                   HomecolorButton: Color("Button-Color"),
                                                   HometitleColor: Color.white)
                                        Image("Image 2")
                                            .resizable()
                                            .aspectRatio(contentMode: .fit)
                                            .frame(width: 128)
                                            .position(x:94.5, y:162.5)
                                    }
                                }
>>>>>>> Stashed changes
                            NavigationLink(destination: TutorialView()) {
                                ZStack{

                                    HomeButton(HometitleButton: "Tutorial",
                                               HomecolorButton: Color("Button-Color"),
                                               HometitleColor: Color.white)
                                    Image("Image 1")
                                        .resizable()
                                        .aspectRatio(contentMode: .fit)
                                        .frame(width: 104)
                                        .position(x:122, y:105)
                                }
                            }
                            NavigationLink(destination: QuestionsView()) {
                                ZStack{
                                    HomeButton(HometitleButton: "Perguntas \nfrequentes",
                                               HomecolorButton: Color("Button-Color"),
                                               HometitleColor: Color.white)
                                    Image("Image 4")
                                        .resizable()
                                        .aspectRatio(contentMode: .fit)
                                        .frame(width: 90)
                                        .position(x:120, y:145)
                                }
                            }
                            
                                NavigationLink(destination: QuestionsView()) {
                                    ZStack{
                                    HomeButton(HometitleButton: "Agendar \ncoleta",
                                               HomecolorButton: Color("Button-Color"),
                                               HometitleColor: Color.white)
                                    Image("Image 3")
                                        .resizable()
                                        .aspectRatio(contentMode: .fit)
                                        .frame(width: 110)
                                        .position(x:93, y:134)
                                }
                            }
                        }
                    } .padding()
                        
                    
                    NavigationLink("", destination: WebView(urlString: "https://wa.me/message/O2WSGGAHTPI7G1"), isActive: $showWebView)
                    
                    Button(action: {
                        showWebView = true
                    }) {
                        
                        VStack(alignment: .leading) {
                            ZStack {
                                Text("Fazer\nDoação")
                                    .font(.largeTitle)
                                    .fontWeight(.heavy)
                                    .padding(.leading, 25)
                                    .multilineTextAlignment(.leading)
                                    .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                                    .frame(width: 335, height: 140)
                                    .background(Color("Text-Color"))
                                    .foregroundColor(.white)
                                    .cornerRadius(15)
                                
                                Image("Image 5")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .frame(width: 130)
                                    .position(x:313.5, y:75)
                            }
                            
                        }
                    }
                    .padding(-16)
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
