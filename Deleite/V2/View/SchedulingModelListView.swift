//
//  SchedulingModelListView.swift
//  Deleite
//
//  Created by Thaynara da Silva Andrade on 20/11/23.
//


// MARK: Gabi fez explicando. Precisa modificar.

import SwiftUI
import CloudKit
import Nuvem

struct SchedulingModelListView: View {
    
    @State var schedulings: [SchedulingModel] = []
    
    // TODO: Pegar do UserDefaults o nome completo da mãe
    @AppStorage("motherName") var motherName: String = ""
    
    let database = CKContainer.default().publicCloudDatabase
    
    // TODO: Mostrar todos os field dos records nessa List
    var body: some View {
        ZStack {
            Color(uiColor: .secondarySystemBackground)
            ScrollView {
                ForEach(schedulings) { scheduling in
                    VStack(alignment: .leading) {
                        Text(scheduling.motherName)
                        Text(scheduling.cep)
                        Text(scheduling.regional)
                        Button {
                            Task {
                                do {
                                    try await scheduling.delete(on: database)
                                } catch {
                                    print(error)
                                }
                                await loadSchedulings()
                            }
                        } label: {
                            Text("Delete-me")
                                .frame(maxWidth: .infinity)
                                .padding()
                                .background(.blue)
                                .foregroundStyle(.white)
                        }
                    }
                    .padding()
                    .background(.white)
                    .padding()
                    Divider()
                }
            }
            ComponentEmpytState(
                LoginImage: Image(systemName: "calendar.badge.plus"),
                Loginname: "Ainda não há agendamentos"
            )
            .opacity(schedulings.isEmpty ? 1 : 0)
        }
        .task {
            await loadSchedulings()
        }
    }
    
    func loadSchedulings() async {
        do {
            schedulings = try await SchedulingModel
                .query(on: database)
                .filter(\.$motherName == motherName)
                .all()
        } catch {
            print(error)
        }
    }
}

#Preview {
    SchedulingModelListView()
}
