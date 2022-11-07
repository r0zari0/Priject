//
//  LastVC.swift
//  Priject
//
//  Created by Max Stovolos on 11/6/22.
//

import UIKit

class LastVC: UIViewController {

    @IBOutlet weak var nameTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

     
    }
    @IBAction func newName(_ sender: Any) {
        guard let text = nameTextField.text else {
            return
        }
        NotificationCenter.default.post(name: NSNotification.Name("Max"), object: nil, userInfo: ["name": text])
    }
}
