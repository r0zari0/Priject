//
//  MyView.swift
//  Priject
//
//  Created by Max Stovolos on 11/4/22.
//

import UIKit

class MyView: UIView {
    
    @IBOutlet var myLabel: UILabel!
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        customInit()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        customInit()
    }
    
    func changeLabel(text: String) {
        myLabel.text = text
    }
    
    private func customInit() {
        let nib = UINib(nibName: String(describing: MyView.self), bundle: nil)
        if let view = nib.instantiate(withOwner: self).first as? UIView {
            addSubview(view)
            view.frame = bounds
        }
    }
}
