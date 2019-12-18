//
//  Formatters.swift
//  DrinkUpSeguesWithCode
//
//  Created by Danya on 19/12/2019.
//  Copyright © 2019 Daniil Girskiy. All rights reserved.
//

import Foundation

class DrinkUpFormatter {
    
    func format(_ info: DrinkUpInformation) -> String {
        return "\(info.drink!.rawValue), \(info.numberOfBottles!), \(info.gender!.rawValue), \(info.bodyWeight!)"
    }
    
}
