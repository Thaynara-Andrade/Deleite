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
        Form {
            Section {
                DatePicker("Data da Retirada do Leite",
                           selection: $newScheduling.milkPickupDate,
                           in: dateRangemilk,
                           displayedComponents: .date
                )
                DatePicker("Data para Coleta", selection: $newScheduling.collectDate,
                           in: dateRange, displayedComponents: .date)
            }
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
        .safeAreaInset(edge: .top, content: {
            HStack{
                Text("Qual a data de\nretirada do leite?")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .multilineTextAlignment(.center)
            }
            .padding(.top, 1)
        })
        .safeAreaInset(edge: .top, content: {
            HStack{
                Image("bottle-blue")
                    .frame(width: 105, height: 105)
            }
            .padding(.top, 44)
            .scaledToFit()
        })
        .safeAreaInset(edge: .bottom, content: {
            Text("Texto explicando para a usuária o limite de dias que o leite pode ficar na geladeira.Texto explicando para a usuária.")
                .font(Font.custom("SF Pro", size: 13))
                .foregroundColor(Color.gray)
                .frame(width: 303, alignment: .topLeading)
                .padding(.bottom, 140)
        })
        .safeAreaInset(edge: .bottom, content: {
            ComponetButtonConfirmRegistreView(newScheduling: $newScheduling)
                .padding(.bottom, 54)
        })
        .onAppear {
            
        }
    }
    
}

//#Preview {
//    RegistrationDatesView(openRegistrationSheet: .constant(true))
//
//}
