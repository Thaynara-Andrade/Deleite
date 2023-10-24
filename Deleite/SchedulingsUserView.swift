//
//  SchedulingsUserView.swift
//  Deleite
//
//  Created by Thaynara da Silva Andrade on 23/10/23.
//

import SwiftUI

struct SchedulingsUserView: View {

        @State private var name = UserDefaults.standard.string(forKey: "name") ?? ""
        @State private var cep = UserDefaults.standard.string(forKey: "cep") ?? ""
        @State private var selectedColeta = UserDefaults.standard.integer(forKey: "selectedColeta")
        @State private var selectedRegional = UserDefaults.standard.integer(forKey: "selectedRegional")
        @State private var milkPickupDate = UserDefaults.standard.object(forKey: "milkPickupDate") as? Date ?? Date()
        @State private var collectionDate = UserDefaults.standard.object(forKey: "collectionDate") as? Date ?? Date()
        @State private var selectedBank = UserDefaults.standard.integer(forKey: "selectedBank")
        
        let coletaOptions = ["Doar Leite", "Receber Potes"]
        let regionals = ["Regional 1", "Regional 2", "Regional 3"]
        let banks = ["MEAC"]
        
        var body: some View {
            NavigationView {
                Form {
                    Section(header: Text("Informações Pessoais")) {
                        TextField("Nome", text: $name)
                        TextField("CEP", text: $cep)
                    }
                    
                    Section(header: Text("Tipo de Coleta")) {
                        Picker("Selecione o Tipo de Coleta", selection: $selectedColeta) {
                            ForEach(0..<coletaOptions.count) { index in
                                Text(coletaOptions[index])
                                    .tag(index)
                            }
                        }
                        .pickerStyle(SegmentedPickerStyle())
                    }
                    
                    Section(header: Text("Regional")) {
                        Picker(selection: $selectedRegional, label: Text("Selecione a Regional")) {
                            ForEach(0..<regionals.count) { index in
                                Text(regionals[index]).tag(index)
                            }
                        }
                        .pickerStyle(MenuPickerStyle())
                    }
                    
                    Section(header: Text("Datas")) {
                        DatePicker("Data da Retirada do Leite", selection: $milkPickupDate, displayedComponents: .date)
                        DatePicker("Data para Coleta", selection: $collectionDate, displayedComponents: .date)
                    }
                    
                    Section(header: Text("Banco de Leite mais Próximo")) {
                        Picker("Selecione o Banco de Leite", selection: $selectedBank) {
                            ForEach(0..<banks.count) { index in
                                Text(banks[index])
                            }
                        } .pickerStyle(MenuPickerStyle())
                    }
                }
                .navigationTitle("Agendamento")
                .navigationBarItems(trailing: Button(action: {
                    // Salvar as variáveis localmente usando UserDefaults
                    UserDefaults.standard.set(name, forKey: "name")
                    UserDefaults.standard.set(cep, forKey: "cep")
                    UserDefaults.standard.set(selectedColeta, forKey: "selectedColeta")
                    UserDefaults.standard.set(selectedRegional, forKey: "selectedRegional")
                    UserDefaults.standard.set(milkPickupDate, forKey: "milkPickupDate")
                    UserDefaults.standard.set(collectionDate, forKey: "collectionDate")
                    UserDefaults.standard.set(selectedBank, forKey: "selectedBank")
                }) {
                    Text("Salvar")
                })
            }
        }
    }

#Preview {
    SchedulingsUserView()
}
