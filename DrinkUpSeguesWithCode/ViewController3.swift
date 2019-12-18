//
//  ViewController3.swift
//  DrinkUpSeguesWithCode
//
//  Created by Danya on 17/12/2019.
//  Copyright © 2019 Daniil Girskiy. All rights reserved.
//

import UIKit

class ViewController3: UIViewController {
    var info: DrinkUpInformation?
    
    @IBOutlet var genderButtons: [UIButton]!        // !!!!!!
    
    @IBAction func back(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }
    
    @IBAction func next(_ sender: UIButton) {
        if info?.gender != nil {
            guard let modal = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(identifier: "vc4") as? ViewController4 else { return }
            modal.info = info
            present(modal, animated: true, completion: nil)
        } else {
            print("Please choose a gender!")
        }
    }
    
    @IBAction func genderButtonPressed(_ sender: UIButton) {
        
        for button in genderButtons {
            button.backgroundColor = .white
        }

        sender.backgroundColor = .red
        
        switch sender.tag {
        case 1:
            info?.gender = .male
        case 2:
            info?.gender = .female
        case 3:
            info?.gender = .child
        default:
            break
        }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }


}
