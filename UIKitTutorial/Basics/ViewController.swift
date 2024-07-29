//
//  ViewController.swift
//  UIKitTutorial
//
//  Created by AMALITECH-PC-593 on 7/6/24.
//

import UIKit

class ViewController: UIViewController {
            
    @IBOutlet weak var greetingLable: UITextField!
    
    @IBOutlet weak var greetingButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .cyan
        //greetingLable.textAlignment = .center
    }

    func greet(_ name: String){
        greetingLable.text = "Hello, Good afternoon \(name), how are you dong ?"
    }
    @IBAction func geetingAction(_ sender: Any) {
        greet("Asumah")
        view.backgroundColor = .green
    }
    
}

