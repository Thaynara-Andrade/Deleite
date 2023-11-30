//
//  RegistrationDatesView.swift
//  Deleite
//
//  Created by Raina on 08/11/23.
//

import SwiftUI

struct RegistrationDatesView: View {
    
    @Binding var newScheduling: SchedulingModel
    
    @Binding var openRegistrationSheet: Bool
    
    @Environment(\.dismiss) var dismiss
    
    // TODO: MUDAR esses didSets pra ser salvo no newScheduling via onDissapear, e ver ele salvando no cloudkit
    @State private var collectionDate = Date() {
        didSet {
            newScheduling.collectDate = collectionDate
        }
    }
    let dateRange: ClosedRange<Date> = {
        let calendar = Calendar.current
        let endDate = Date.now.advanced(by: (60 * 60 * 24) * 14)
        return Date.now...endDate
    }()
    
    @State private var milkPickupDate = Date() {
        didSet {
            newScheduling.milkPickupDate = milkPickupDate
        }
    }
    let dateRangemilk: ClosedRange<Date> = {
        let calendar = Calendar.current
        let startDate = Date.now.advanced(by: -(60 * 60 * 24) * 14)
        return startDate...Date.now
    }()
    
    @State var ShowRegistrationConfirmation:Bool = false
    
    var body: some View {
            Form{
                Section(footer:
                    HStack(alignment: .center){
                        Image("bottle-blue")
                            .frame(width: 105, height: 105)
                    }
                    .padding(.leading, 121)
                    
                ){}
                Section(footer:
                    HStack(alignment: .center){
                        Text("Qual a data de \n retirada do leite?")
                            .font(.largeTitle)
                            .fontWeight(.bold)
                            .multilineTextAlignment(.center)
                    }
                    .padding(.leading, 31)
                ){}
            
                Section(footer: Text("O leite humano pode ser armazenado no congelador por até 15 dias após a primeira coleta.")){
                    DatePicker("Data da Retirada do Leite",
                               selection: $milkPickupDate,
                               in: dateRangemilk,
                               displayedComponents: .date
                    )
                    DatePicker("Data para Coleta", selection: $collectionDate,
                               in: dateRange, displayedComponents: .date)
                }
                Section(footer:
                    ComponetButtonConfirmRegistreView(newScheduling: $newScheduling)
                    .padding(.top, 125)
                ){}
            }
            .navigationTitle("Agendamento")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button("Cancelar") {
                        openRegistrationSheet = false
                    }
                }
            }
    }
}

//#Preview {
//    RegistrationDatesView(openRegistrationSheet: .constant(true))
//    
//}
