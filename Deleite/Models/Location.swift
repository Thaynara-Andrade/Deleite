//
//  Location.swift
//  Deleite
//
//  Created by Raina Rodrigues de Lima on 19/09/23.
//

import SwiftUI
import MapKit

struct Location: Identifiable{
    let name: String
    let cityName: String
    let coordinates: CLLocationCoordinate2D
    let locationAddress: String
    let telephone1 : String
    let telephone2 : String
    let description: String
    let email: String
    let imageNames: [String]
    let link: String
    
    //variavél computada - identifiable
    var id: String {
        name + cityName
    }
}
