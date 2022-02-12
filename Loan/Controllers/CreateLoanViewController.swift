//
//  CreateLoanViewController.swift
//  Loan
//
//  Created by Hercules Silva on 06/02/22.
//

import UIKit

class CreateLoanViewController: UIViewController {
    
    @IBOutlet weak var iconBack: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.navigationItem.hidesBackButton = true
        
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(didIconBackTap(tapGesture:)))
        iconBack.addGestureRecognizer(tapGesture)
    }
    
    @objc func didIconBackTap(tapGesture: UITapGestureRecognizer) {
        self.navigationController?.popViewController(animated: true)
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
