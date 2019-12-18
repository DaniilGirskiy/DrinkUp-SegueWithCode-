//
//  ViewController5.swift
//  DrinkUpSeguesWithCode
//
//  Created by Danya on 17/12/2019.
//  Copyright © 2019 Daniil Girskiy. All rights reserved.
//

import UIKit

class ViewController5: UIViewController {
    @IBOutlet weak var textLabel: UILabel!
    var info: DrinkUpInformation?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let formatter = DrinkUpFormatter()
        textLabel.text = formatter.format(info!)
        // Do any additional setup after loading the view.
    }

}
