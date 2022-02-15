//
//  CreateLoanService.swift
//  Loan
//
//  Created by Hercules Silva on 13/02/22.
//

import Foundation

class CreateLoanService {
    
    var currentName = ""
    var currentvalue = ""
    
    private var loan: Loan?
    
    func initLoan() {
        if loan == nil {
            let uuid = NSUUID().uuidString
            loan = Loan(id: uuid, name: "", value: 0, createdAt: "", status: false)
        }
    }
    
    func enableCreateButton() -> Bool{
        if let saveLoan = loan {
            return Validators.isNotEmpty(value: saveLoan.name) && saveLoan.value != 0.0
        }
        return false
    }
    
    func setName(name: String) {
        initLoan()
        loan?.name = name
    }
    
    func setValue(value: String) {
        initLoan()
        if let myDouble = Double(value) {
            loan?.value = myDouble
        }
    }
    
    // TODO: should access data base
    func createLoan() -> Loan? {
        return loan
    }
}
