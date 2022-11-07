//
//  SecondVC.swift
//  Priject
//
//  Created by Max Stovolos on 11/5/22.
//

import UIKit

class SecondVC: UIViewController {
    
    @IBOutlet weak var secondView: UIView!
    
    let customView: MyView = MyView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        secondView.addSubview(customView)
        customView.frame = secondView.bounds
    }
}
