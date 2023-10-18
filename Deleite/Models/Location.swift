//
//  Location.swift
//  Deleite
//
//  Created by Raina Rodrigues de Lima on 19/09/23.
//

import SwiftUI
import MapKit

struct Location: Identifiable, Equatable{
    let name: String
    let cityName: String
    let coordinates: CLLocationCoordinate2D
    let locationAddress: String
    let telephone1 : String
    let telephone2 : String?
    let description: String
    let email: String
    let imageNames: [String]
    let link: String
    
    var id: String {
        name + cityName
    }
    
    static func == (lhs: Location, rhs: Location) -> Bool {
           return lhs.id == rhs.id &&
                  lhs.name == rhs.name &&
                  lhs.cityName == rhs.cityName &&
                  lhs.coordinates.latitude == rhs.coordinates.latitude &&
                  lhs.coordinates.longitude == rhs.coordinates.longitude &&
                  lhs.locationAddress == rhs.locationAddress &&
                  lhs.telephone1 == rhs.telephone1 &&
                  lhs.telephone2 == rhs.telephone2 &&
                  lhs.description == rhs.description &&
                  lhs.email == rhs.email &&
                  lhs.imageNames == rhs.imageNames &&
                  lhs.link == rhs.link
       }
}
