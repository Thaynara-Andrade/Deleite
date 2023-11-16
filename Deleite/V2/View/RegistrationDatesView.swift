//
//  RegistrationDatesView.swift
//  Deleite
//
//  Created by Raina on 08/11/23.
//

import SwiftUI

struct RegistrationDatesView: View {
    
    @Binding var openRegistrationSheet: Bool
    
    @Environment(\.dismiss) var dismiss
    @State private var collectionDate = Date()
    let dateRange: ClosedRange<Date> = {
        let calendar = Calendar.current
        let endDate = Date.now.advanced(by: (60 * 60 * 24) * 14)
        return Date.now...endDate
    }()
    
    @State private var milkPickupDate = Date()
    let dateRangemilk: ClosedRange<Date> = {
        let calendar = Calendar.current
        let startDate = Date.now.advanced(by: -(60 * 60 * 24) * 14)
        return startDate...Date.now
    }()
    
    @State var ShowRegistrationConfirmation:Bool = false
    
    var body: some View {
        NavigationView{
            Form{
                Section {
                    DatePicker("Data da Retirada do Leite",
                               selection: $milkPickupDate,
                               in: dateRangemilk,
                               displayedComponents: .date
                    )
                    DatePicker("Data para Coleta", selection: $collectionDate,
                               in: dateRange, displayedComponents: .date)
                }
            }
            .navigationTitle("Agendamento")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button("Cancelar") {
                        dismiss()
                    }
                }
                ToolbarItem(placement: .navigationBarLeading){
                    Button("Voltar") {
                        print("Voltar tapped!")
                    }
                }
            }
            .safeAreaInset(edge: .top, content: {
                HStack{
                    Text("Qual a data de\nretirada do leite?")
                        .font(
                            Font.custom("SFProRounded-Semibold", size: 34)
                            .weight(.bold)
                        )
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
                ComponetButtonConfirmRegistreView()
                    .padding(.bottom, 54)
            })
        }
    }
}

#Preview {
    RegistrationDatesView(openRegistrationSheet: .constant(true))
    
}
