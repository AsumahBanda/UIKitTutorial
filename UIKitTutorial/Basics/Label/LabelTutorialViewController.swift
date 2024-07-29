//
//  LabelTutorialViewController.swift
//  UIKitTutorial
//
//  Created by AMALITECH-PC-593 on 7/7/24.
//

import UIKit

class LabelTutorialViewController: UIViewController {
    private var label: UILabel = {
        let label = UILabel()
        label.text = "hello world"
        label.textColor = .black
        
        label.font = .systemFont(ofSize: 32, weight: .bold)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private var subLabel: UILabel = {
        let label = UILabel()
        label.text = "this is a subtitle"
        label.textColor = .gray
        return label
    }()
    override func viewDidLoad() {
        super.viewDidLoad()
       
        view.addSubview(label)
        view.backgroundColor = .green
        
        label.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        label.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        
        view.addSubview(subLabel)
        subLabel.translatesAutoresizingMaskIntoConstraints  = false
        subLabel.topAnchor.constraint(equalTo: label.bottomAnchor, constant: 10).isActive = true
        subLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
    }
}

#Preview {
    LabelTutorialViewController()
}
