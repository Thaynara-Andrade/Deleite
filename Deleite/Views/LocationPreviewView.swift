//
//  LocationPreviewView.swift
//  Deleite
//
//  Created by Raina Rodrigues de Lima on 20/09/23.
//

import SwiftUI

struct LocationPreviewView: View {
    
    @EnvironmentObject private var vm: LocationsViewModel
    let location: Location
    
    var body: some View {
        HStack(alignment: .bottom, spacing: 0){
            VStack(alignment: .leading, spacing: 16){
                if let imageName = location.imageNames.first {
                    Image(imageName)
                        .resizable()
                        .scaledToFit()
                        .frame(width: 100, height: 100)
                        .cornerRadius(10)
                }
            }
            .padding(6)
            .background(Color.white)
            .cornerRadius(10)
            
            VStack{
                HStack{
                    lernMoreButton
                    showNextLocation
                }
                Text(location.name)
            }
            .padding(10)
        }
        .padding(20)
        .background(RoundedRectangle(cornerRadius: 10)
            .fill(.ultraThinMaterial)
            .offset(y: 20)
        )
        .cornerRadius(10)
    }
    
    private var lernMoreButton: some View{
        Button{
            vm.sheetLocation = location
        }label :{
            Text("learn more")
                .font(.headline)
                .frame(width: 50, height: 50)
        }
        .buttonStyle(.bordered)
        
    }
    
    private var showNextLocation: some View{
        Button{
            //vm.sheetLocation = location
        }label :{
            Text("Next")
                .font(.headline)
                .frame(width: 50, height: 50)
        }
        .buttonStyle(.bordered)
        
    }
}

struct LocationPreviewView_Previews: PreviewProvider {
    static var previews: some View {
        
        ZStack{
            Color.blue.ignoresSafeArea()
            LocationPreviewView(location: LocationsDataService.locations.first!)
                .padding()
        }
    }
}
