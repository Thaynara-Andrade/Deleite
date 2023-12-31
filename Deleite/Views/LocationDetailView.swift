//
//  LocationDetailView.swift
//  Deleite
//
//  Created by Raina Rodrigues de Lima on 21/09/23.
//

import SwiftUI
import MapKit

struct LocationDetailView: View {
    
    @EnvironmentObject private var vm: LocationsViewModel
    
    let location: Location
    
    var body: some View {
        ScrollView{
            VStack{
                imageSection
                    .shadow(color: Color.black.opacity(0.3), radius: 20, x: 0, y: 10)
                
                VStack(alignment: .leading, spacing: 16){
                    titleSection
                    Divider()
                    DescriptionSection
                    Divider()
                    mapLayer
                }
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding()
            }
        }
        .ignoresSafeArea()
        .background(.ultraThinMaterial)
        .overlay(backButton, alignment: .topLeading)
    }
}

struct LocationDetailView_Previews: PreviewProvider {
    static var previews: some View {
        LocationDetailView(location: LocationsDataService.locations.first!)
            .environmentObject(LocationsViewModel())
    }
}

extension LocationDetailView{
    
    private var imageSection: some View{
        TabView{
            ForEach(location.imageNames, id: \.self){
                Image($0)
                    .resizable()
                    .scaledToFill()
            }
        }
        .frame(height: 300)
        .tabViewStyle(PageTabViewStyle())
    }
    
    private var titleSection: some View{
        VStack(alignment: .leading, spacing: 8){
            Text(location.name)
                .font(.largeTitle)
                .fontWeight(.semibold)
            Text(location.cityName)
                .font(.title3)
                .foregroundColor(.secondary)
        }
    }
    
    private var DescriptionSection: some View{
        VStack(alignment: .leading, spacing: 8){
            
            Text("Endereço")
            Text(location.locationAddress)
                .font(.subheadline)
                .foregroundColor(.secondary)
            
            Text("Atendimento")
            Text(location.description)
                .font(.subheadline)
                .foregroundColor(.secondary)
            
            
            
            Text("Telefone")
            HStack{
                let telephones = [location.telephone1, location.telephone2].compactMap({ $0 })
                
                Text(telephones.joined(separator: " / "))
                    .font(.subheadline)
                    .foregroundColor(.secondary)
                    .textSelection(.enabled)
            }
            
            Text("E-mail")
            Text(location.email)
                .font(.subheadline)
                .foregroundColor(.secondary)
            
            
            
            if let url = URL(string: location.link){
                Link("Saiba mais em www.gov.br", destination: url)
                    .font(.headline)
                    .tint(.blue)
            }
        }
        .padding(5)
        
    }
    
    private var mapLayer: some View{
        Map(coordinateRegion: .constant(MKCoordinateRegion(
            center: location.coordinates,
            span: MKCoordinateSpan(latitudeDelta: 0.01, longitudeDelta: 0.01))),
            annotationItems: [location]){ location in
            MapAnnotation(coordinate: location.coordinates){
                LocationMapAnnotionView()
                    .shadow(radius: 10)
            }
        }
            .allowsHitTesting(false)
            .aspectRatio(1, contentMode: .fit)
            .cornerRadius(30)
    }
    
    private var backButton: some View{
        Button{
            vm.sheetLocation = nil
        }label: {
            Image(systemName: "xmark")
                .font(.headline)
                .padding(16)
                .foregroundColor(.primary)
                .background(.thickMaterial)
                .cornerRadius(10)
                .shadow(radius: 4)
                .padding()
        }
    }
}

