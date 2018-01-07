//
//  Wage.swift
//  window-shopper
//
//  Created by Anirudh Bandi on 1/7/18.
//  Copyright © 2018 Anirudh Bandi. All rights reserved.
//

import Foundation

class Wage{
    class func getHours(forWage wage: Double, andPrice price:Double) -> Int{
        
        return Int(ceil(price/wage))
    }
}
