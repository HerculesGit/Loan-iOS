//
//  Validators.swift
//  Loan
//
//  Created by Hercules Silva on 13/02/22.
//

import Foundation

struct Validators {
    static func isEmpty(value: String?) -> Bool {
        if value == nil {
            return true
        }
        
        return value!.isEmpty
    }
    
    static func isNotEmpty(value: String) -> Bool {
        return !isEmpty(value: value)
    }
}
