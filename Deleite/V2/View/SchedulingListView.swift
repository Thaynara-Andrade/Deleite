//
//  SchedulingListView.swift
//  Deleite
//
//  Created by Thaynara da Silva Andrade on 29/11/23.
//

import SwiftUI
import Nuvem
import CloudKit

struct SchedulingListView: View {
   @State var schedulings: [SchedulingModel] = []
    
    @AppStorage("collectDate") var collectDate: String = ""
    let database = CKContainer.default().publicCloudDatabase
    
    let dateFormatter: DateFormatter = {
        let formatter = DateFormatter()
        formatter.dateFormat = "dd 'de' MMMM 'de' yyyy"
        return formatter
    }()
    var formattedCollectDate: String {
        return dateFormatter.string(from: dateFormatter.date(from: collectDate) ?? Date())
    }
    var body: some View {
        ZStack {
            Color(uiColor: .white)
            ScrollView {
                ForEach(schedulings) { scheduling in
                    VStack(alignment: .leading) {
                        Text(dateFormatter.string(from: scheduling.collectDate))
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
                .filter(\.$collectDate == dateFormatter.date(from: collectDate) ?? Date())
                .all()
        } catch {
            print(error)
        }
    }
}
 
#Preview {
    SchedulingListView()
}
