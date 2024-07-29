//
//  ToggleViewController.swift
//  UIKitTutorial
//
//  Created by AMALITECH-PC-593 on 7/10/24.
//

import UIKit

class ToggleViewController: UIViewController {
    var text: UILabel = {
        let uiLabel = UILabel()
        uiLabel.text = "text is on"
        uiLabel.textColor = .black
        uiLabel.font = .systemFont(ofSize: 24)
        
        uiLabel.translatesAutoresizingMaskIntoConstraints    = false
        
        return uiLabel
    }()
    
    lazy var toggleInterface: ToggleButtonsView = {
        let view = ToggleButtonsView()
        view.delegate = self
        view.heightAnchor.constraint(equalToConstant: 500).isActive = true
        view.translatesAutoresizingMaskIntoConstraints   = false
        return view
    }()
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(toggleInterface)
        view.addSubview(text)
        view.backgroundColor = .white
        toggleInterface.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        toggleInterface.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        text.topAnchor.constraint(equalTo: toggleInterface.bottomAnchor, constant: 10).isActive = true
        text.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        // Do any additional setup after loading the view.
    }
    
}

extension ToggleViewController : ToggleButtonsDelegate {
    func toggleOff() {
        UIView.animate(withDuration: 2) { [self] in
            toggleInterface.layer.cornerRadius = 10
            //            toggleInterface.backgroundColor = .systemFill
            //            text.transform = CGAffineTransform(rotationAngle: .pi)
            
        }
    }
    
    func toggleOn() {
        UIView.transition(with: text,
                          duration: 3,
                          options: .curveEaseOut) { [self] in
            text.textColor = .systemGreen
        }
        
        
        /// ui view animation
//        UIView.animate(withDuration:  2) { [self] in
            
            
            
            /// change the corner radius
            //            toggleInterface.layer.cornerRadius = 50
            //
            
            ///  change bg
            //toggleInterface.backgroundColor = .brown
            
            /// change transformation ie rotation
            //            text.transform = .identity// CGAffineTransform(rotationAngle: .pi * 2)
//        }
    }
    
    
}

#Preview{
    ToggleViewController()
}
