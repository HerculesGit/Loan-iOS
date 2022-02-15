//
//  OpenLoansViewService.swift
//  Loan
//
//  Created by Hercules Silva on 15/02/22.
//

import Foundation

class OpenLoansService {
    private var openloans: [Loan] = [
        Loan(id: "1", name: "Gotinha do devedor", value: 15.0, createdAt: "12/01/2022", status: false),
        Loan(id: "1", name: "Gotinha do devedor", value: 15.0, createdAt: "12/01/2022", status: false),
        Loan(id: "1", name: "Gotinha do devedor", value: 15.0, createdAt: "12/01/2022", status: false),
        Loan(id: "1", name: "Gotinha do devedor", value: 15.0, createdAt: "12/01/2022", status: false),
        Loan(id: "1", name: "Gotinha do devedor", value: 15.0, createdAt: "12/01/2022", status: false),
        Loan(id: "1", name: "Gotinha do devedor", value: 15.0, createdAt: "12/01/2022", status: true),
        Loan(id: "1", name: "Gotinha do devedor", value: 15.0, createdAt: "12/01/2022", status: false),
        Loan(id: "1", name: "Gotinha do devedor", value: 15.0, createdAt: "12/01/2022", status: false),
        Loan(id: "1", name: "Gotinha do devedor", value: 15.0, createdAt: "12/01/2022", status: false),
        Loan(id: "1", name: "Gotinha do devedor", value: 15.0, createdAt: "12/01/2022", status: false),
        Loan(id: "1", name: "Gotinha do devedor", value: 15.0, createdAt: "12/01/2022", status: false),
    ]
    
    func getLoans() -> [Loan] {
        return openloans
    }
}
