//
//  ImageViewController.swift
//  UIKitTutorial
//
//  Created by AMALITECH-PC-593 on 7/9/24.
//

import UIKit

class ImageViewController: UIViewController {
    
   static let height = 100.00
   static let width = 100.00
    var image : UIImageView = {
        let uiImgeView = UIImageView()
        uiImgeView.image = UIImage(systemName: "person")
        uiImgeView.contentMode = .scaleAspectFill
        uiImgeView.clipsToBounds = true
        uiImgeView.widthAnchor.constraint(equalToConstant: width).isActive = true
        uiImgeView.heightAnchor.constraint(equalToConstant: height).isActive = true
        uiImgeView.translatesAutoresizingMaskIntoConstraints = false
        return uiImgeView
    }()
    
    var rect : UIView = {
      let _rect = UIView()
        _rect.backgroundColor = .green
        _rect.widthAnchor.constraint(equalToConstant: 100).isActive = true
        _rect.heightAnchor.constraint(equalToConstant: 100).isActive = true
        _rect.translatesAutoresizingMaskIntoConstraints = false
      
        return _rect
    }()
    
    var circle : UIView = {
       
      let _rect = UIView()
        _rect.backgroundColor = .green
        _rect.widthAnchor.constraint(equalToConstant: width).isActive = true
        _rect.layer.cornerRadius = height / 2
        _rect.heightAnchor.constraint(equalToConstant: height).isActive = true
        _rect.translatesAutoresizingMaskIntoConstraints = false
      
        return _rect
    }()
    override func viewDidLoad() {
        
        super.viewDidLoad()
        view.addSubview(image)
        view.addSubview(rect)
        view.addSubview(circle)
        
        rect.bottomAnchor.constraint(equalTo: image.topAnchor).isActive = true
        circle.bottomAnchor.constraint(equalTo: image.topAnchor).isActive = true
        rect.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 10).isActive = true
        circle.leadingAnchor.constraint(equalTo: image.leadingAnchor, constant:0).isActive = true
        image.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        image.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        
        // Do any additional setup after loading the view.
    }

}

#Preview {
    ImageViewController()
}
