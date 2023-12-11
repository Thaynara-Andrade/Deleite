//
//  RecipientRegistrationView.swift
//  Deleite
//
//  Created by Raina on 14/11/23.
//

import SwiftUI
import CloudKit
import Nuvem


struct RecipientRegistrationView: View {
    
    @Binding var newScheduling: SchedulingModel
    @Binding var openRegistrationSheet: Bool
    @Environment(\.dismiss) var dismiss
    let database = CKContainer.default().publicCloudDatabase
    
    let dateRange: ClosedRange<Date> = {
        let calendar = Calendar.current
        let endDate = Date.now.advanced(by: (60 * 60 * 24) * 14)
        return Date.now...endDate
    }()
    @AppStorage("collectDate") var appStoragecollectDate: String = ""
    
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
    
    @State private var collectionDateRecipient = Date()
    
    @State var confirmAppointmentRecipient:Bool = false
    
    
    var body: some View {
        
        Form{
            Section(footer:
                        HStack(alignment: .center){
                Image("bottle-blue")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 105, height: 105)
                }
                .padding(.leading, 104)
            ){}
            Section(footer:
                        HStack(alignment: .center){
                Text("Qual a data de \n retirada do leite?")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .foregroundColor(Color("Text"))
                    .multilineTextAlignment(.center)
            }
            .padding(.leading, 30)
            ){}
        
            Section {
                DatePicker("Data para coleta", selection: $newScheduling.collectDate,
                           in: dateRange, displayedComponents: .date)
            }
            
            Section(footer:
                        ComponentDateRecipient(newScheduling: $newScheduling)
                .padding(.top, 220)
            ) {}
            
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
        }
    }
}

//#Preview {
//    NavigationView{
//        RecipientRegistrationView(openRegistrationSheet: .constant(true))
//    }
//}
