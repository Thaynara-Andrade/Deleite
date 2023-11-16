//
//  CloudKitCRUDIView.swift
//  Deleite
//
//  Created by Thaynara da Silva Andrade on 10/11/23.
//

import SwiftUI
import CloudKit

class CloudKitCrud: ObservableObject {
    
    @Published var text: String = ""
    @Published var fruits: [String] = []
    
    func addButtonPressed(){
        guard !text.isEmpty else { return }
        addItem(name: text)
    }
    
    private func addItem(name: String){
        let  newFruit = CKRecord(recordType: "Frutas")
        newFruit["name"] = name
        saveItem(record: newFruit)
        
        
    }
    private func saveItem(record: CKRecord){
        CKContainer.default().publicCloudDatabase.save(record) { returnedRecord, returnedError in
            print("Record: \(returnedRecord)")
            print("Record: \(returnedError)")
            
            DispatchQueue.main.async {
                self.text = ""
            }
        }
        
    }
    
    func fetchItems() {
        
        let predicate = NSPredicate (value: true)
        let query = CKQuery(recordType: "Fruits", predicate: predicate)
        let queryOperation = CKQueryOperation (query: query)
        
        var returnedItems: [String] = []
        
        if #available (iOS 15.0, *) {
            queryOperation.recordMatchedBlock = { (returnedRecordID, returnedResult) in
                switch returnedResult {
                case .success(let record):
                    guard let name = record ["name"] as? String else { return }
                    returnedItems.append(name)
                case .failure(let error):
                    print("Error recordMatchedBlock: \(error)")
                    
                }
            }
        } else {
            queryOperation.recordFetchedBlock = {(returnedRecord) in
                guard let name = returnedRecord ["name"] as? String else { return }
                returnedItems.append(name)
                
            }
        }
        
        if #available (iOS 15.0, *) {
            queryOperation.queryResultBlock = { [weak self] returnedResult in
                print("RETURNED queryResultBlock: \(returnedResult)")
                self?.fruits = returnedItems
            }
        } else {
            queryOperation.queryCompletionBlock = { [weak self] (returnedCursor, returnedError) in
                print ("RETURNED queryCompletionBlock")
                self?.fruits = returnedItems
            }
        }
        
        addOperation(operation:queryOperation)
        
    }
        
    
    func addOperation(operation: CKDatabaseOperation) {
        CKContainer.default().publicCloudDatabase.add(operation)
        
    }
    
}
struct CloudKitCRUDIView: View {
    
    @StateObject private var viewmodel = CloudKitCrud()
    
    var body: some View {
        NavigationView{
            VStack{
                header
                textfield
                Buttonadd
                List {
                    Text("Hi")
                } .listStyle(PlainListStyle())
                
            } .padding()
                .navigationBarBackButtonHidden(true)
        }
    }
}

#Preview {
    CloudKitCRUDIView()
}

extension CloudKitCRUDIView {
    private var header: some View {
        Text("CloudKit CRUD ✨")
            .font(.headline)
            .underline()
    }
    private var textfield: some View {
        TextField("Escreva aqui..", text: $viewmodel.text)
            .frame(height: 55)
            .padding(.leading)
            .background(Color.gray.opacity(0.4))
            .cornerRadius(10)
        
    }
    private var Buttonadd: some View {
        Button{
            viewmodel.addButtonPressed()
            
        } label: {
            Text("Adicionar")
                .font(.headline)
                .foregroundColor(.white)
                .frame(height: 55)
                .frame(maxWidth: .infinity)
                .background(Color.pink)
                .cornerRadius(10)
        }
        
    }
}
