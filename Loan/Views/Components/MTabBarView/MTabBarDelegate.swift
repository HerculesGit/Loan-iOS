//
//  MTabBarDelegate.swift
//  Loan
//
//  Created by Hercules Silva on 12/02/22.
//

import Foundation
import UIKit

protocol MTabBarDelegate {
    func didAddPressed(_ addButton: UIButton)
    
    func didFireButtonPressed(_ fireButton: UIButton)
    
    func didArchiveButtonPressed(_ archiveButton: UIButton)
}
