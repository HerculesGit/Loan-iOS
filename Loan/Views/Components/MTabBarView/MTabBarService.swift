//
//  MTabBarService.swift
//  Loan
//
//  Created by Hercules Silva on 12/02/22.
//

import Foundation
import UIKit

class MTabBarService {
    var iconNameSelected: String = KAssets.tabBarIsOpenSelected
    
    /**
     * The name should be "KAssets.tabBarArchiveSelected" or "KAssets.tabBarIsOpenSelected"
     **/
    func setIconPressed(name: String) {
        iconNameSelected = name
    }
    
    func getMTabBarImage() -> UIImage {
        let isArchiveSelected = iconNameSelected == KAssets.tabBarArchiveSelected
        return isArchiveSelected
        ? UIImage(named: KAssets.tabBarArchiveSelected)!
        : UIImage(named: KAssets.tabBarIsOpenSelected)!
    }
}
