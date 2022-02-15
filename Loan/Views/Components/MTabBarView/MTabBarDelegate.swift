//
//  MTabBarDelegate.swift
//  Loan
//
//  Created by Hercules Silva on 12/02/22.
//

import Foundation
import UIKit

protocol MTabBarDelegate {
    
    func getNavController() -> UINavigationController?
    
    func didPressAddButton(_ addButton: UIButton)
    
    func didPressFireButton(_ fireButton: UIButton)
    
    func didPressArchiveButton(_ archiveButton: UIButton)
}
