//
//  EventListener.swift
//  Loan
//
//  Created by Hercules Silva on 15/02/22.
//

import Foundation


protocol EventListener {
    func eventTrigger(eventType: String, data: Any?)
}
