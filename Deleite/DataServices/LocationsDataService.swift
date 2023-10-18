//
//  LocationsDataService.swift
//  Deleite
//
//  Created by Raina Rodrigues de Lima on 19/09/23.
//

import Foundation
import MapKit

class LocationsDataService {
    
    static let locations: [Location] = [
        Location(
            name: "Banco de Leite Humano - Maternidade Escola Assis Chateaubriand - MEAC",
            cityName: "Fortaleza - CE",
            coordinates: CLLocationCoordinate2D(latitude: -3.7478391105048385, longitude: -38.55353543915446),
            locationAddress: "Rua Coronel Nunes de Melo, s/n, Rodolfo Teófilo, Fortaleza-Ce",
            telephone1 : "(85) 3366-8509",
            telephone2 : nil,
            description: "Segunda a sexta-feira, das 8h às 15h",
            email: "blhmeac@gmail.com",
            imageNames: [
                "meac-banco-1",
                "meac-banco-2",
                "meac-banco-3",
            ],
            link: "https://www.gov.br/saude/pt-br/acesso-a-informacao/acoes-e-programas/banco-de-leite-humano"),
        
        Location(
            name: "Banco de Leite Humano - Hospital Geral Dr. César Cals",
            cityName: "Fortaleza - CE",
            coordinates: CLLocationCoordinate2D(latitude: -3.725466331034799, longitude: -38.53356606948943),
            locationAddress: "Avenida do Imperador, 545, Centro, Fortaleza-Ce",
            telephone1 : "3101-5367",
            telephone2 : "0800 286-5678",
            description: "24 horas por dia, todos os dias da semana",
            email: "bancodeleite@hgcc.ce.gov.br",
            imageNames: [
                "cesarcals-banco-1",
                "cesarcals-banco-2",
                "cesarcals-banco-3",
            ],
            link: "https://www.gov.br/saude/pt-br/acesso-a-informacao/acoes-e-programas/banco-de-leite-humano"),
        
        Location(
            name: "Banco de Leite Humano - Hospital Infantil Albert Sabin",
            cityName: "Fortaleza - CE",
            coordinates: CLLocationCoordinate2D(latitude: -3.76261486723486, longitude: -38.531727217764534),
            locationAddress: "Rua Tertuliano Sales, 544-B, Vila União, Fortaleza-Ce",
            telephone1 : "0800-280-4169",
            telephone2 : "",
            description: "Segunda a sexta-feira, das 7h às 17h",
            email: "blh@hias.ce.gov.br",
            imageNames: [
                "albertsabin-banco-1",
                "albertsabin-banco-2",
                "albertsabin-banco-3",
            ],
            link: "https://www.gov.br/saude/pt-br/acesso-a-informacao/acoes-e-programas/banco-de-leite-humano"),
        
        
        Location(
            name: "Banco de Leite Humano - Hospital Geral de Fortaleza",
            cityName: "Fortaleza - CE",
            coordinates: CLLocationCoordinate2D(latitude: -3.7393551602632984, longitude: -38.47568948702375),
            locationAddress: "Rua Ávila Goulart, 900, Papicu, Fortaleza-Ce",
            telephone1 : "(85) 3101-3335",
            telephone2 : "",
            description: "Segunda a sexta-feira, das 8h às 16h",
            email: "email@.ce.gov.br",
            imageNames: [
                "hospitalgeral-banco-1",
                "hospitalgeral-banco-2",
                "hospitalgeral-banco-3",
            ],
            link: "https://www.gov.br/saude/pt-br/acesso-a-informacao/acoes-e-programas/banco-de-leite-humano"),
        
    ]
    
}

