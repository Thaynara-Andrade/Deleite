//
//  RegistrationDatesView.swift
//  Deleite
//
//  Created by Raina on 08/11/23.
//

import SwiftUI

struct RegistrationDatesView: View {
    
    @State private var date = Date()
    let dateRange: ClosedRange<Date> = {
        let calendar = Calendar.current
        let startComponents = DateComponents(year: 2023, month: 11, day: 1)
        let endComponents = DateComponents(year: 2023, month: 11, day: 30, hour: 23, minute: 59, second: 59)
        return calendar.date(from:startComponents)!
            ...
            calendar.date(from:endComponents)!
    }()
    
    @State var ShowRegistrationConfirmation:Bool = false
    @State private var milkPickupDate = UserDefaults.standard.object(forKey: "milkPickupDate") as? Date ?? Date()
    @State private var collectionDate = UserDefaults.standard.object(forKey: "collectionDate") as? Date ?? Date()
    
    var body: some View {
        NavigationView{
            Form{
                Section(header: Text("Datas referente a doação")) {
                    DatePicker("Data da Retirada do Leite",
                                        selection: $date,
                                        in: dateRange,
                                        displayedComponents: .date)
                    
                    DatePicker("Data para Coleta", selection: $collectionDate, displayedComponents: .date)
                }
                
                Text("Texto explicando para a usuária o limite de dias que o leite pode ficar na geladeira.Texto explicando para a usuária.")
            }
            .navigationTitle("Agendamento")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button("Cancelar") {
                        print("Cancelar tapped!")
                        ShowRegistrationConfirmation = false
                    }
                }
                ToolbarItem(placement: .navigationBarLeading){
                    Button("Voltar") {
                        print("Voltar tapped!")
                    }
                }
            }
            .safeAreaInset(edge: .bottom, content: {
                ComponetButtonConfirmRegistreView()
                .padding(.bottom, 54)
            })
        }
    }
}

#Preview {
    RegistrationDatesView()
}
