//
//  Agendamento.swift
//  Deleite
//
//  Created by Thaynara da Silva Andrade on 20/11/23.
//

import Foundation
import CloudKit
import Nuvem

struct SchedulingModel: CKModel {

    var record: CKRecord!
    
    init() { }
    
    @CKField("motherName")
    var motherName: String
    
    @CKField("cep")
    var cep: String
    
    @CKField("regional")
    var regional: String
    
    @CKField("milkPickupDate")
    var milkPickupDate: Date
    
    @CKField("collectDate")
    var collectDate: Date // data de retirada do leite pela mae
}
