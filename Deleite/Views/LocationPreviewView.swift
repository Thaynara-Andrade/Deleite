//
//  LocationPreviewView.swift
//  Deleite
//
//  Created by Raina Rodrigues de Lima on 20/09/23.
//

import SwiftUI

struct LocationPreviewView: View {
    
    @EnvironmentObject private var vm: LocationsViewModel
    let location: Location
    
    var body: some View {
        HStack(alignment: .bottom, spacing: 0){
            VStack(alignment: .leading, spacing: 16){
                imagemSection
                titleSection
            }
            
            VStack(spacing: 8){
                lernMoreButton
                showNextLocation
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
            Color.green.ignoresSafeArea()
            LocationPreviewView(location: LocationsDataService.locations.first!)
                .padding()
        }
        .environmentObject(LocationsViewModel())
    }
}

extension LocationPreviewView{
    private var imagemSection: some View{
        ZStack{
            if let imageName = location.imageNames.first{
                Image(imageName)
                    .resizable()
                    .frame(width: 100, height: 100)
                    .cornerRadius(10)
            }
        }
        .padding(6)
        .background(Color.white)
        .cornerRadius(10)
    }
    
    private var titleSection: some View{
        VStack(alignment: .leading, spacing: 4){
            Text(location.name)
                .font(.title2)
                .fontWeight(.bold)
            Text(location.cityName)
                .font(.subheadline)
        }
        .frame(maxWidth: .infinity, alignment: .leading)
    }
    
    
    private var lernMoreButton: some View{
        Button{
            vm.sheetLocation = location
        }label :{
            Text("Saber mais")
                .font(.headline)
                .frame(width: 125, height: 35)
        }
        .buttonStyle(.borderedProminent)
        
    }
    
    private var showNextLocation: some View{
        Button{
            vm.nextButtonPressed(location: location)
        }label :{
            Text("Próximo")
                .font(.headline)
                .frame(width: 125, height: 35)
        }
        .buttonStyle(.bordered)
        
    }
}
