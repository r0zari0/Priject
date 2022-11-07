//
//  ViewController.swift
//  Priject
//
//  Created by Max Stovolos on 11/4/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var myView: MyView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        NotificationCenter.default.addObserver(self, selector: #selector(getName), name: NSNotification.Name("Max"), object: nil)
    }
    
    deinit {
        NotificationCenter.default.removeObserver(self, name: NSNotification.Name("Max"), object: nil)
    }
    
    @objc
    func getName(_ notification: NSNotification) {
        if let text = notification.userInfo?["name"] as? String {
            myView.changeLabel(text: text)
        }
    }

    @IBAction func setLabel() {
        myView.changeLabel(text: "Maksym")
    }
}

