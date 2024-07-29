//
//  ToggleButtonsView.swift
//  UIKitTutorial
//
//  Created by AMALITECH-PC-593 on 7/9/24.
//

import UIKit

class ToggleButtonsView: UIView {
    
    var delegate: ToggleButtonsDelegate?
    
    var vStack : UIStackView = {
       let stack = UIStackView()
        stack.axis = .vertical
        stack.spacing = 100
        stack.distribution = .equalSpacing
        stack.widthAnchor.constraint(equalToConstant: 300).isActive = true
        stack.translatesAutoresizingMaskIntoConstraints = false
        
        return stack
    }()
    
  lazy  var toggleOffButton : UIButton = {
     let button = UIButton()
        button.setTitle("Off", for: .normal)
        button.titleLabel?.font = .systemFont(ofSize: 14)
        button.setTitleColor(.brown, for: .normal)
        button.backgroundColor = .systemGreen
        button.layer.cornerRadius = 16
        button.addTarget(self, action: #selector(off), for: .touchUpInside)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
   lazy var toggleOnButton : UIButton = {
     let button = UIButton()
        button.setTitle("On", for: .normal)
        button.titleLabel?.font = .systemFont(ofSize: 14)
        button.setTitleColor(.brown, for: .normal)
        button.addTarget(self, action: #selector(on), for: .touchUpInside)
        button.layer.cornerRadius = 16
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        heightAnchor.constraint(equalToConstant: 200).isActive = true
        widthAnchor.constraint(equalToConstant: UIScreen.main.bounds.width - 32).isActive = true
        layer.cornerRadius = 16
        backgroundColor = .red
        addSubview(vStack)
        vStack.addArrangedSubview(toggleOffButton)
        vStack.addArrangedSubview(toggleOnButton)
    
        vStack.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        
        vStack.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
      
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    @objc func on(){
        delegate?.toggleOn()
    }
    
    @objc func off(){
        delegate?.toggleOff()
    }
}

protocol ToggleButtonsDelegate {
    func toggleOff()
    func toggleOn()
}

#Preview {
    ToggleButtonsView()
}
