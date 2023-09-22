//
//  LocationsViewModel.swift
//  Deleite
//
//  Created by Raina Rodrigues de Lima on 19/09/23.
//

import SwiftUI
import MapKit

class LocationsViewModel: ObservableObject{
    
    //todos os pontos do mapa carregado
    @Published var locations: [Location]
    
    //Localização atual no mapa
    @Published var mapLocation: Location{
        didSet{
            updateMapRegiaon(location: mapLocation)
        }
    }
    
    @Published var mapRegion: MKCoordinateRegion = MKCoordinateRegion()
    
    let mapSpan = MKCoordinateSpan(latitudeDelta: 0.1, longitudeDelta: 0.1)
    
    //mostrar detalhes da localização via sheet
    @Published var sheetLocation:  Location? = nil
    
    @Published var showLocationList: Bool = false
    
    init(){
        let locations = LocationsDataService.locations
        self.locations = locations
        self.mapLocation = locations.first!
        self.updateMapRegiaon(location: locations.first!)
    }
    
    
//    private func updateMapRegiaon(location: Location){
//        mapRegion = MKCoordinateRegion(center: location.coordinates, span: mapSpan)
//    }
    
    private func updateMapRegiaon(location: Location){
        withAnimation(.easeOut){
            mapRegion = MKCoordinateRegion(center: location.coordinates, span: mapSpan)
        }
    }

    func toggleLocationList(location: Location){
        withAnimation(.easeOut){
//            showLocationList = showLocationList.toggle()
            showLocationList = !showLocationList
        }
    }

    func showNextLocation(location: Location){
        withAnimation(.easeOut){
            mapLocation = location
            showLocationList = false
        }
    }
    
    func nextButtonPressed(location: Location){
    //obter o índice atual
       guard let currentIndex = locations.firstIndex(where: {$0 == mapLocation}) else {
            print("Não foi possível identificar o índice atual na matriz de localização. ")
            return
        }
        
        let nextIndex = currentIndex + 1
        guard locations.indices.contains(nextIndex) else {
            
            guard let firstLocation = locations.first else { return }
            showNextLocation(location: firstLocation)
            return
        }
        
        let nextLocation = locations[nextIndex]
        showNextLocation(location: nextLocation)
    }
}
