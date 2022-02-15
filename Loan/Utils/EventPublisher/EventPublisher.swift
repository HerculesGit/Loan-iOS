//
//  NavBundle.swift
//  Loan
//
//  Created by Hercules Silva on 13/02/22.
//

import Foundation
import UIKit

class EventPublisher {
    static let instance = EventPublisher()
    private init () {}
    
    private var listeners: [MListener] = []
    
    func subscribe(listener: MListener) {
        let contains =  listeners.contains { mListener in
            return mListener.hash == listener.hash
        }
        if !contains {
            listeners.append(listener)
        }
    }
    
    func unsubscribe(listener: MListener) {
        if let index = listeners.firstIndex(where: { $0.hash == listener.hash && $0.eventType == listener.eventType}) {
            listeners.remove(at: index)
        }
    }
    
    func notifySubscriber(eventType: String, data: Any?) {
        for mListener in listeners {
            if mListener.eventType == eventType {
                mListener.event.eventTrigger(eventType: eventType, data: data)
            }
        }
    }
}
