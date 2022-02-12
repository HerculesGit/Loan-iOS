//
//  LoanCell.swift
//  Loan
//
//  Created by Hercules Silva on 10/02/22.
//

import UIKit

class LoanCell: UITableViewCell {

    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var createdAtLabel: UILabel!
    @IBOutlet weak var valueLabel: UILabel!
    @IBOutlet weak var radioButton: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(false, animated: animated)
    }
    
    func setLoan(loan: Loan, indexPath: IndexPath) {
        radioButton.image = self.getRadioButtonIcon(isOpen: loan.status)
        radioButton.restorationIdentifier = "\(loan.status)"
        self.addGestureRecognizer(indexPath: indexPath)
    }
    
    func addGestureRecognizer(indexPath: IndexPath) {
        let tapGesture = UITapGestureRecognizer (target: self, action: #selector(onRadioButtonTapped(tapGesture:)))
        radioButton.addGestureRecognizer((tapGesture))
    }
    
    @objc func onRadioButtonTapped(tapGesture: UITapGestureRecognizer) {
        let isOpen = radioButton.restorationIdentifier! == "true"
        radioButton.image = getRadioButtonIcon(isOpen: !isOpen)
        radioButton.restorationIdentifier = "\(!isOpen)"
    }
    
    func getRadioButtonIcon(isOpen: Bool) -> UIImage {
        return isOpen
            ? UIImage(named: KAssets.radioButtonChecked)!
            : UIImage(named: KAssets.radioButtonUnchecked)!
    }
}
