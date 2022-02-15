//
//  CreateLoanViewController.swift
//  Loan
//
//  Created by Hercules Silva on 06/02/22.
//

import UIKit

class CreateLoanViewController: UIViewController {
    
    @IBOutlet weak var iconBack: UIImageView!
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var valueTextField: UITextField!
    @IBOutlet weak var createButton: UIButton!
    
    let createLoanService: CreateLoanService = CreateLoanService()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.navigationItem.hidesBackButton = true
        
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(didTapIconBackButton(tapGesture:)))
        iconBack.addGestureRecognizer(tapGesture)
        
        createButton.isEnabled = false
    }
    
    @IBAction func onNameChanged(_ sender: UITextField) {
        if let name = sender.text {
            createLoanService.setName(name: name)
            createButton.isEnabled = createLoanService.enableCreateButton()
        }
    }
    
    @IBAction func onValueChanged(_ sender: UITextField) {
        if let value = sender.text {
            createLoanService.setValue(value: value)
            createButton.isEnabled = createLoanService.enableCreateButton()
        }
    }
    
    @objc func didTapIconBackButton(tapGesture: UITapGestureRecognizer) {
        self.navigationController?.popViewController(animated: true)
    }
    
    @IBAction func didPressCreateButton(_ sender: UIButton) {
        if let loan = createLoanService.createLoan() {
            EventPublisher.instance.notifySubscriber(eventType: KEventTypes.didCreateLoan, data: loan)
        }
    }
}
