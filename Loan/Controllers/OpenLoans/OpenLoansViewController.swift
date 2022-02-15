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
    
    var onCreateLoanListener: MListener!
    let service: OpenLoansService = OpenLoansService()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        loanTableView.delegate = self
        loanTableView.dataSource = self
        initListeners()
        
        loanTableView.register(UINib(nibName: K.loanNibName, bundle: nil), forCellReuseIdentifier: K.loanIdentifierCell)
        
        let mtabBar = MTabBarView (frame: CGRect(x: 0, y:0, width: cTabBar.bounds.width, height: cTabBar.bounds.height))
        
        mtabBar.delegate = self
        cTabBar.addSubview(mtabBar)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
    }
    
    func initListeners() {
        onCreateLoanListener = MListener(hash: "@", eventType: KEventTypes.didCreateLoan, event: self)
        EventPublisher.instance.subscribe(listener: onCreateLoanListener)
    }
}

// MARK: - UITableViewDeletages
extension OpenLoansViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        // send to backend
        let index = indexPath.row
        var loans = service.getLoans()
        loans[index].status = !loans[index].status
    }
}

// MARK: - UITableViewDataSource
extension OpenLoansViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        let loans = service.getLoans()
        return loans.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let loans = service.getLoans()
        
        let index = indexPath.row
        let loanCell = loanTableView.dequeueReusableCell(withIdentifier: K.loanIdentifierCell, for: indexPath) as! LoanCell
        let openLoan = loans[index]
        
        loanCell.nameLabel.text = openLoan.name
        loanCell.setLoan(loan: openLoan, indexPath: indexPath)
        return loanCell
    }
}

extension OpenLoansViewController: MTabBarDelegate {
    
    func getNavController() -> UINavigationController?{
        return navigationController
    }
    
    func didPressAddButton(_ addButton: UIButton) {
        print("didAddPressed")
    }
    
    func didPressFireButton(_ fireButton: UIButton) {
        print("didFireButtonPressed")
    }
    
    func didPressArchiveButton(_ archiveButton: UIButton) {
        print("didArchiveButtonPressed")
    }
}

extension OpenLoansViewController : EventListener {
    func eventTrigger(eventType: String, data: Any?) {
    }
}
