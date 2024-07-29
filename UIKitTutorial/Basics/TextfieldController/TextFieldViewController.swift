//
//  TextFieldViewController.swift
//  UIKitTutorial
//
//  Created by AMALITECH-PC-593 on 7/9/24.
//

import UIKit

class TextFieldViewController: UIViewController {
    var textfield : UITextField = {
        let textfield = UITextField()
        
        textfield.placeholder = "Search something"
        
        textfield.borderStyle = .roundedRect
        textfield.backgroundColor = .systemGreen
        
        textfield.translatesAutoresizingMaskIntoConstraints = false
        
        return textfield
    }()
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(textfield)
        
        textfield.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        
        textfield.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true

    }
}

extension TextFieldViewController : UITextFieldDelegate {
    
}

#Preview {
    TextFieldViewController()
}
