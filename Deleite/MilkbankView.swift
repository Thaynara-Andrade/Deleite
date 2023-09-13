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

struct MilkBanckView: View {
    @State private var mapRegion = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 51.5, longitude: -0.12), span: MKCoordinateSpan(latitudeDelta: 0.2, longitudeDelta: 0.2))
    
    let locations = [
        Location(name: "teste1", coordinate:CLLocationCoordinate2D(latitude: 51.501, longitude: -0.141)),
        Location(name: "Raina",coordinate: CLLocationCoordinate2D(latitude: 51.508, longitude: -0.076))
        ]
    
    var body: some View {
        NavigationView {
            Map(coordinateRegion: $mapRegion, annotationItems: locations) { location in
                MapAnnotation(coordinate: location.coordinate) {
                    NavigationLink {
                        Text(location.name)
                    } label: {
                        Circle()
                            .stroke(.red, lineWidth: 3)
                            .frame(width: 44, height: 44)
                    }
                }
            }
            .navigationTitle("teste")
        }

    }
}

struct MilkBanckView_Previews: PreviewProvider {
    static var previews: some View {
        MilkBanckView()
    }
}

