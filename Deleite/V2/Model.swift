//
//  Model.swift
//  Deleite
//
//  Created by Thaynara da Silva Andrade on 09/11/23.
//

import Foundation
import Nuvem
import CloudKit

struct Modelo: CKModel {
    var record: CKRecord!
    
    @CKField("Nome")
    var nome: String
    
    
}
