//
//  LocationsView.swift
//  Deleite
//
//  Created by Raina Rodrigues de Lima on 19/09/23.
//

import SwiftUI
import MapKit

struct LocationsView: View {
    
    
    @EnvironmentObject var vm: LocationsViewModel

    var body: some View {
        ZStack{
            mapLayer
                .ignoresSafeArea()
            
            VStack(spacing: 0){
                Spacer()
                locationPreviewStack
            }
        }
        .sheet(item: $vm.sheetLocation,onDismiss: nil){ location in
            LocationDetailView(location: location)            
        }
    }
    
    private var mapLayer: some View{

        Map(coordinateRegion: $vm.mapRegion,
            annotationItems: vm.locations,
            annotationContent: { location  in MapAnnotation(coordinate:location.coordinates){
                    LocationMapAnnotionView()
                .scaleEffect(vm.mapLocation == location ? 1: 0.7)
                .shadow(radius: 10)
                    .onTapGesture {
                        vm.showNextLocation(location: location)
                    }
                }
        })
        .ignoresSafeArea()
    }
    
    private var locationPreviewStack: some View{
        ZStack{
            ForEach(vm.locations){ location in
                if vm.mapLocation == location {
                   LocationPreviewView(location: location)
                        .shadow(color:Color.black.opacity(0.3), radius: 20)
                        .padding()
                        .transition(.asymmetric(insertion: .move(edge: .trailing), removal: .move(edge: .leading)))
                }
            }
        }
    }
    
}
    
    

struct LocationsView_Previews: PreviewProvider {
    static var previews: some View {
        LocationsView()
            .environmentObject(LocationsViewModel())
    }
}
