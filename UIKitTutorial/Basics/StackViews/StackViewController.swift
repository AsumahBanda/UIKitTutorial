//
//  StackViewController.swift
//  UIKitTutorial
//
//  Created by AMALITECH-PC-593 on 7/9/24.
//

import UIKit

class StackViewController: UIViewController {
  
    var VStack: UIStackView  = {
     let stack = UIStackView()
        stack.axis = .horizontal
        
        stack.translatesAutoresizingMaskIntoConstraints = false
     return stack
    }()
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(VStack)
        VStack.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        
            VStack.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        
        VStack.addArrangedSubview(createRectangle())
        VStack.addArrangedSubview(createRectangle())

        VStack.addArrangedSubview(createRectangle())


        // Do any additional setup after loading the view.
    }
    
    func createRectangle(_ width: Double = 100, _ height: Double = 150) -> UIView {
        let rectangle = UIView()
        
        rectangle.widthAnchor.constraint(equalToConstant: width).isActive = true
        rectangle.heightAnchor.constraint(equalToConstant: height).isActive = true
        rectangle.backgroundColor = UIColor(red: .random(in: 0...1), green: .random(in: 0...1), blue: .random(in: 0...1), alpha: 1)
        return rectangle
    }

}

#Preview {
    StackViewController()
}
