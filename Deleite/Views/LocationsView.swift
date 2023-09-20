//
//  LocationsView.swift
//  Deleite
//
//  Created by Raina Rodrigues de Lima on 19/09/23.
//

import SwiftUI
import MapKit

struct LocationsView: View {
    
//    @StateObject private var vm = LocationsViewModel()
    @EnvironmentObject private var vm: LocationsViewModel
    
    var body: some View {
        ZStack{
            Map(coordinateRegion: $vm.mapRegion, annotationItems: vm.locations, annotationContent: { location  in MapAnnotation(coordinate:location.coordinates){
                LocationMapAnnotionView()
//                    .scaleEffect(vm.mapLocation == location ? 1:0)
                }
            })
            .ignoresSafeArea()
        }
    }
}

struct LocationsView_Previews: PreviewProvider {
    static var previews: some View {
        LocationsView()
            .environmentObject(LocationsViewModel())
    }
}
