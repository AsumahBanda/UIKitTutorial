//
//  ButtonViewController.swift
//  UIKitTutorial
//
//  Created by AMALITECH-PC-593 on 7/8/24.
//

import UIKit

class ButtonViewController: UIViewController {
    var nameText: UILabel = {
        let name = UILabel()
        name.text = "Hello Asumah"
        name.translatesAutoresizingMaskIntoConstraints = false
        return name
    }()
   private lazy var greetingButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("Greeting bro", for: .normal)
        button.setTitle("Bravo", for: .highlighted)
        button.backgroundColor = .systemGreen
        button.layer.cornerRadius = 10
        button.addTarget(self, action: #selector(greet) , for: .touchUpInside)
        button.widthAnchor.constraint(equalToConstant: 100).isActive = true
        button.translatesAutoresizingMaskIntoConstraints = false
        
       
        return button
        
    }()
    override func viewDidLoad() {
        view.addSubview(greetingButton)
        view.addSubview(nameText)
      
        greetingButton.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        greetingButton.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        nameText.topAnchor.constraint(equalTo: greetingButton.bottomAnchor, constant: 10).isActive = true
        nameText.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        super.viewDidLoad()
        
    }
    
    @objc func greet(){
        nameText.isHidden.toggle()
    }
}


#Preview {
    ButtonViewController()
}
