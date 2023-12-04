//
//  RegistrationDatesView.swift
//  Deleite
//
//  Created by Raina on 08/11/23.
//

import SwiftUI
import CloudKit
import Nuvem

struct RegistrationDatesView: View {
    
    @Binding var newScheduling: SchedulingModel
    @Binding var openRegistrationSheet: Bool
    @Environment(\.dismiss) var dismiss
    let database = CKContainer.default().publicCloudDatabase
    
    let dateRange: ClosedRange<Date> = {
        let calendar = Calendar.current
        let endDate = Date.now.advanced(by: (60 * 60 * 24) * 14)
        return Date.now...endDate
    }()
    
    @AppStorage("milkPickupDate") var appStorageMilkPickupDate: String = ""
    
    let dateRangemilk: ClosedRange<Date> = {
        let calendar = Calendar.current
        let startDate = Date.now.advanced(by: -(60 * 60 * 24) * 14)
        return startDate...Date.now
    }()
    
    let dateFormatter: DateFormatter = {
        let formatter = DateFormatter()
        formatter.dateFormat = "dd 'de' MMMM 'de' yyyy"
        return formatter
    }()
    
    @State var showRegistrationConfirmation: Bool = false
    
    var body: some View {
        
        Form{
            Section(footer:
                        HStack(alignment: .center){
                Image("bottle-blue")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 105, height: 105)
            }
                .padding(.leading, 101)
                    
            ){}
            Section(footer:
                        HStack(alignment: .center){
                Text("Qual a data de \n retirada do leite?")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .foregroundColor(Color.black)
                    .multilineTextAlignment(.center)
            }
                .padding(.leading, 11)
            ){}
            
            Section(footer: Text("O leite humano pode ser armazenado no congelador por até 15 dias após a primeira coleta.")){
                DatePicker("Data da Retirada do Leite",
                           selection: $newScheduling.milkPickupDate,
                           in: dateRangemilk,
                           displayedComponents: .date
                )
                DatePicker("Data para Coleta", selection: $newScheduling.collectDate,
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
                .onAppear {}
                
            }
            
        }
        .border(Color.red)
    }
}
//#Preview {
//    RegistrationDatesView(openRegistrationSheet: .constant(true))
//
//}
