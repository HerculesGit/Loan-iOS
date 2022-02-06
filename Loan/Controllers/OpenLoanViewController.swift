//
//  ViewController.swift
//  Loan
//
//  Created by Hercules Silva on 04/02/22.
//

import UIKit

class OpenLoanViewController: UIViewController {

    @IBOutlet weak var loanView: UITableView!
    
    
    let loans = ["batman", "spiderman", "ava"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        loanView.delegate = self
        loanView.dataSource = self
        //loanView.allowsSelection = false
        loanView.separatorStyle = .none
        
   }
}

extension OpenLoanViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 80
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return loans.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = loanView.dequeueReusableCell(withIdentifier: "customCell") as! CustomCell
        cell.selectionStyle = UITableViewCell.SelectionStyle.none
        
        cell.nameLabel.text = loans[indexPath.row]
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print(loans[indexPath.row])
        
        self.performSegue(withIdentifier: "goToCreateLoan", sender: self)
    }
}
