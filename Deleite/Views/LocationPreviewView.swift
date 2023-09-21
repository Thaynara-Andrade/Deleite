//
//  LocationPreviewView.swift
//  Deleite
//
//  Created by Raina Rodrigues de Lima on 20/09/23.
//

import SwiftUI

struct LocationPreviewView: View {
    
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
                Text(location.name)
            }
        }
        .padding(20)
        .background(RoundedRectangle(cornerRadius: 10)
            .fill(.ultraThinMaterial)
            .offset(y: 65)
        )
        .cornerRadius(10)
    }
}

struct LocationPreviewView_Previews: PreviewProvider {
    static var previews: some View {
        
        ZStack{
            Color.blue.ignoresSafeArea()
            LocationPreviewView(location: LocationsDataService.locations.first!)
                .padding()
    //        LocationsView()
    //            .environmentObject(LocationsViewModel())
        }
    }
}

//extension LocationsView()
