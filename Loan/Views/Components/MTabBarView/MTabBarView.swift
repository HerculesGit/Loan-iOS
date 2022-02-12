//
//  MTabBarView.swift
//  Loan
//
//  Created by Hercules Silva on 12/02/22.
//

import UIKit

class MTabBarView: UIView {
    
    @IBOutlet weak var tabBarImageView: UIImageView!
    
    var delegate: MTabBarDelegate?
    let mTabBarService: MTabBarService = MTabBarService()
    
    /*
     // Only override draw() if you perform custom drawing.
     // An empty implementation adversely affects performance during animation.
     override func draw(_ rect: CGRect) {
     // Drawing code
     }
     */
    
    @IBAction func onAddPressed(_ sender: UIButton) {
        delegate?.didAddPressed(sender)
    }
    
    @IBAction func onFirePressed(_ sender: UIButton) {
        mTabBarService.setIconPressed(name: KAssets.tabBarIsOpenSelected)
        tabBarImageView.image = mTabBarService.getMTabBarImage()
        delegate?.didFireButtonPressed(sender)
    }
    
    @IBAction func onArchivePressed(_ sender: UIButton) {
        mTabBarService.setIconPressed(name: KAssets.tabBarArchiveSelected)
        tabBarImageView.image = mTabBarService.getMTabBarImage()
        delegate?.didArchiveButtonPressed(sender)
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        commonInit()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        commonInit()
    }
    
    func commonInit() {
        let viewFromXib = Bundle.main.loadNibNamed("MTabBarView", owner: self, options: nil)![0] as! UIView
        
        viewFromXib.frame = self.bounds
        addSubview(viewFromXib)
    }
    
}
