//
//  CloudKitView.swift
//  Deleite
//
//  Created by Thaynara da Silva Andrade on 09/11/23.
//

import SwiftUI
import CloudKit

class CloudKitUserViewModel: ObservableObject {
    @Published var isSignedInToiCloud: Bool = false
    @Published var error: String = ""
    
    init(){
        getiCloudStatus()
    }
    private func getiCloudStatus(){
        CKContainer.default().accountStatus {[weak self] returnedStatus, returnedError in DispatchQueue.main.async {
            switch returnedStatus {
            case .available:
                self?.isSignedInToiCloud = true
            case .noAccount:
                self?.error = CloudKitError.iCloudAccountNotFound.rawValue
            case .couldNotDetermine:
                self?.error =
                CloudKitError.iCloudAccountNotDetermined.rawValue
            case .restricted:
                self?.error = CloudKitError.iCloudAccountRestricted.rawValue
            default:
                self?.error = CloudKitError.iCloudAccountUnknown.rawValue
            }
        }
            
        }
    }
    enum CloudKitError: String, LocalizedError{
        case iCloudAccountNotFound
        case iCloudAccountNotDetermined
        case iCloudAccountRestricted
        case iCloudAccountUnknown
    }
}

struct CloudKitView: View {
    @StateObject private var viewmodel = CloudKitUserViewModel()
    var body: some View {
        Text("Está conectado \(viewmodel.isSignedInToiCloud.description.uppercased())")
        Text(viewmodel.error)
    }
}

#Preview {
    CloudKitView()
}
