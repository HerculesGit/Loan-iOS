//
//  OpenLoansViewController.swift
//  Loan
//
//  Created by Hercules Silva on 10/02/22.
//

import UIKit

class OpenLoansViewController: UIViewController {
    
    @IBOutlet weak var loanTableView: UITableView!
    
    @IBOutlet weak var cTabBar: MTabBarView!
    var openloans: [Loan] = [
        Loan(id: "1", name: "Gotinha do devedor", value: 15.0, createdAt: "12/01/2022", status: false),
        Loan(id: "1", name: "Gotinha do devedor", value: 15.0, createdAt: "12/01/2022", status: false),
        Loan(id: "1", name: "Gotinha do devedor", value: 15.0, createdAt: "12/01/2022", status: false),
        Loan(id: "1", name: "Gotinha do devedor", value: 15.0, createdAt: "12/01/2022", status: false),
        Loan(id: "1", name: "Gotinha do devedor", value: 15.0, createdAt: "12/01/2022", status: false),
        Loan(id: "1", name: "Gotinha do devedor", value: 15.0, createdAt: "12/01/2022", status: true),
        Loan(id: "1", name: "Gotinha do devedor", value: 15.0, createdAt: "12/01/2022", status: false),
        Loan(id: "1", name: "Gotinha do devedor", value: 15.0, createdAt: "12/01/2022", status: false),
        Loan(id: "1", name: "Gotinha do devedor", value: 15.0, createdAt: "12/01/2022", status: false),
        Loan(id: "1", name: "Gotinha do devedor", value: 15.0, createdAt: "12/01/2022", status: false),
        Loan(id: "1", name: "Gotinha do devedor", value: 15.0, createdAt: "12/01/2022", status: false),
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        loanTableView.delegate = self
        loanTableView.dataSource = self
        
        loanTableView.register(UINib(nibName: K.loanNibName, bundle: nil), forCellReuseIdentifier: K.loanIdentifierCell)
        
        let mtabBar = MTabBarView (frame: CGRect(x: 0, y:0, width: cTabBar.bounds.width, height: cTabBar.bounds.height))
        
        mtabBar.delegate = self
        cTabBar.addSubview(mtabBar)
        //view.addSubview(mtabBar)
    }
}

// MARK: - UITableViewDeletages
extension OpenLoansViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        // send to backend
        let index = indexPath.row
        openloans[index].status = !openloans[index].status
    }

}

// MARK: - UITableViewDataSource
extension OpenLoansViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return openloans.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let index = indexPath.row
        let loanCell = loanTableView.dequeueReusableCell(withIdentifier: K.loanIdentifierCell, for: indexPath) as! LoanCell
        let openLoan = openloans[index]
        
        loanCell.nameLabel.text = openLoan.name
        loanCell.setLoan(loan: openLoan, indexPath: indexPath)
        return loanCell
    }
}

extension OpenLoansViewController: MTabBarDelegate {
    func didAddPressed(_ addButton: UIButton) {
        print("didAddPressed")
    }
    
    func didFireButtonPressed(_ fireButton: UIButton) {
        print("didFireButtonPressed")
    }
    
    func didArchiveButtonPressed(_ archiveButton: UIButton) {
        print("didArchiveButtonPressed")
    }
    
    
}
