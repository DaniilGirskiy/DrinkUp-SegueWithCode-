//
//  ViewController2.swift
//  DrinkUpSeguesWithCode
//
//  Created by Danya on 16/12/2019.
//  Copyright © 2019 Daniil Girskiy. All rights reserved.
//

import UIKit

class ViewController2: UIViewController {
    @IBOutlet weak var inputTextField: UITextField!
    var info: DrinkUpInformation?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        inputTextField.delegate = self                  // зачем?
    }
    
    @IBAction func back(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }
    
    @IBAction func next(_ sender: UIButton) {
        if let inputText = inputTextField.text {
            if let inputValue = Float(inputText) {
                guard let modal = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(identifier: "vc3") as? ViewController3 else { return }
                
                info?.numberOfBottles = inputValue
                modal.info = info
                
                present(modal, animated: true, completion: nil)
            } else {
                print("Please enter a number!")
            }
        }
    }
    
}

extension ViewController2: UITextFieldDelegate {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
}
