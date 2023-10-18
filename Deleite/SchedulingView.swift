//
//  SchedulingView.swift
//  Deleite
//
//  Created by Thaynara da Silva Andrade on 12/09/23.
//

import SwiftUI

struct SchedulingView: View {
    @State private var selectedDayIndex = Date()
    @State private var selecteddaysOfWeek = Bool()
    
    
    let daysOfWeek = ["Regional I", "Regional II", "Regional III", "Regional IV", "Regional V"]
    
    
    var body: some View {
        NavigationView {
            VStack(alignment: .trailing) {
                
                Picker("",
                       selection: $selecteddaysOfWeek) {
                    ForEach(daysOfWeek, id: \.self) { daysOfWeek in
                        Text(daysOfWeek)
                    }
                }
                .pickerStyle(MenuPickerStyle())
                
                DatePicker(selection: $selectedDayIndex,
                           in: ...Date(),
                           displayedComponents: .date,
                           label: {
                    Text("Escolha a data")
                        .font(.title2)
                }
                )

                
            } .navigationTitle("Agendar coleta")
                .padding()
        }
    }
}

struct SchedulingView_Previews: PreviewProvider {
    static var previews: some View {
        SchedulingView()
    }
}
