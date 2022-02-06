//
//  CustomCell.swift
//  Loan
//
//  Created by Hercules Silva on 05/02/22.
//

import UIKit

class CustomCell: UITableViewCell {
    
    @IBOutlet weak var loanView: UIView!
    @IBOutlet weak var checkboxView: UIView!
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var createdAtLabel: UILabel!
    @IBOutlet weak var valueLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
        if selected {
            checkboxView.layer.backgroundColor = UIColor.purple.cgColor
        } else {
            checkboxView.layer.backgroundColor = UIColor.blue.cgColor
        }
    }

}
