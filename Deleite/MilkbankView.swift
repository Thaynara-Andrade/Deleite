//
//  MapBancosView.swift
//  Deleite
//
//  Created by Raina Rodrigues de Lima on 12/09/23.
//

import MapKit
import SwiftUI

struct Location: Identifiable {
    let id = UUID()
    let name: String
    let coordinate: CLLocationCoordinate2D
}

struct SheetView: View {
    @Environment(\.dismiss) var dismiss

    var body: some View {
        Text("Teste")
        Button("Press to dismiss") {
            dismiss()
        }
    }
}

struct MilkBanckView: View {
    
    @State private var showingSheet = false

    
    @State private var mapRegion = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 51.5, longitude: -0.12), span: MKCoordinateSpan(latitudeDelta: 0.2, longitudeDelta: 0.2))
    
    let locations = [
        Location(name: "Posto 1", coordinate:CLLocationCoordinate2D(latitude: 51.501, longitude: -0.141)),
        Location(name: "Posto 2",coordinate: CLLocationCoordinate2D(latitude: 51.508, longitude: -0.076)),
        Location(name: "Posto 3",coordinate: CLLocationCoordinate2D(latitude: 51.508, longitude: -0.131))
        ]

    
    var body: some View {
        NavigationView {
            Map(coordinateRegion: $mapRegion, annotationItems: locations) { location in
                MapAnnotation(coordinate: location.coordinate) {
                    Button(location.name) {
                        showingSheet.toggle()
                    }
                    .background(.pink)
                    .sheet(isPresented: $showingSheet) {
                        SheetView()
                    }
                }
            }
            .navigationTitle("Banco de Leite")
        }

    }
}


struct MilkBanckView_Previews: PreviewProvider {
    static var previews: some View {
        MilkBanckView()
    }
}

