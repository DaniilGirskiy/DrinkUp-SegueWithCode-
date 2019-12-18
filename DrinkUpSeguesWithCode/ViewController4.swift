//
//  ViewController4.swift
//  DrinkUpSeguesWithCode
//
//  Created by Danya on 17/12/2019.
//  Copyright © 2019 Daniil Girskiy. All rights reserved.
//

import UIKit

class ViewController4: UIViewController {
    @IBOutlet weak var inputTextField: UITextField!
    var info: DrinkUpInformation?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        inputTextField.delegate = self
    }

    
    @IBAction func back(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }
    
    @IBAction func next(_ sender: UIButton) {
        if let inputText = inputTextField.text {
            if let inputValue = Float(inputText) {
                
                guard let modal = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(identifier: "vc5") as? ViewController5 else { return }
                info?.bodyWeight = inputValue
                modal.info = info
                present(modal, animated: true, completion: nil)
                
            } else {
                print("Please enter a number!")
            }
        }
    }
    
    
}

extension ViewController4: UITextFieldDelegate {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
}
