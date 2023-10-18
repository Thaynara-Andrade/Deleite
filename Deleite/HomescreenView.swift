//
//  HomescreenView.swift
//  Deleite
//
//  Created by Thaynara da Silva Andrade on 18/09/23.
//
import SwiftUI

struct HomescreenView: View {
    @StateObject private var vm = LocationsViewModel()
    @State private var showAlert = false
    
    
    let gridSpacingh: CGFloat = 13
    let gridSpacingv: CGFloat = -10
    let columnCount: Int = 2
    @State private var showWebView = false
    
    var body: some View {
        NavigationView {
            ScrollView(.vertical) {
                LazyVGrid(columns: Array(repeating: GridItem(.flexible(), spacing: gridSpacingv), count: columnCount), spacing: gridSpacingh ) {
                    
                    Group {
                        NavigationLink(destination: LocationsView()
                            .environmentObject(vm)) {
                                ZStack{
                                    HomeButton(HometitleButton: "Banco \nde leite",
                                               HomecolorButton: Color("Text-Color"),
                                               HometitleColor: Color.white)
                                    Image("Banco de leite")
                                        .resizable()
                                        .aspectRatio(contentMode: .fit)
                                        .frame(width: 128)
                                        .position(x:94.5, y:162.5)
                                }
                            }
                        NavigationLink(destination: TutorialView()) {
                        ZStack{
                                HomeButton(HometitleButton: "Tutorial",
                                           HomecolorButton: Color("Text-Color"),
                                           HometitleColor: Color.white)
                                Image("Tutorial")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .frame(width: 104)
                                    .position(x:122, y:105)
                            }
                        }
                        NavigationLink(destination: QuestionsView()) {
                            ZStack{
                                HomeButton(HometitleButton: "Perguntas \nfrequentes",
                                           HomecolorButton: Color("Text-Color"),
                                           HometitleColor: Color.white)
                                Image("Perguntas frequentes")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .frame(width: 90)
                                    .position(x:120, y:145)
                            }
                        }
                        Button(action: {
                            if let whatsappURL = URL(string: "https://tinyurl.com/DOAR-LEITE-MEAC-BLH-UFC") {
                                UIApplication.shared.open(whatsappURL)
                            }
                        }) {
                                ZStack {
                                    
                                    HomeButton(HometitleButton: "Agendar \ncoleta",
                                               HomecolorButton:Color("Text-Color"),
                                               HometitleColor: Color.white)
                                    
                                    Image("Agendar coleta")
                                        .resizable()
                                        .aspectRatio(contentMode: .fit)
                                        .frame(width: 110)
                                        .position(x:93, y:134)
                                }
                            }
                    }
                } .padding()
                
                Button(action: {
                    if let whatsappURL = URL(string: "https://tinyurl.com/DOAR-LEITE-MEAC-BLH-UFC") {
                        UIApplication.shared.open(whatsappURL)
                    }
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
                            
                            Image("Fazer doação")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 130)
                                .position(x:305, y:75)
                        } .padding(9)
                        
                    }
                }
                .padding(-16)
            }
            .navigationTitle("Deleite")
        }
    }
}

struct HomescreenView_Previews: PreviewProvider {
    static var previews: some View {
        HomescreenView()
    }
}
