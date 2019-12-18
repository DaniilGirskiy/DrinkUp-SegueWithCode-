//
//  ViewController.swift
//  DrinkUpSeguesWithCode
//
//  Created by Danya on 16/12/2019.
//  Copyright © 2019 Daniil Girskiy. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var info = DrinkUpInformation()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func drinkButtonTapped(_ sender: UIButton) {
        
        // определяем свойство структуры и передаем дальше
        
        switch sender.tag {
        case 1:
            info.drink = .beer
        case 2:
            info.drink = .wine
        case 3:
            info.drink = .vodka
        default:
            break
        }
        
        guard let modal = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(identifier: "vc2") as? ViewController2 else { return }
        modal.info = info
        present(modal, animated: true, completion: nil)
        
    }
    

}

