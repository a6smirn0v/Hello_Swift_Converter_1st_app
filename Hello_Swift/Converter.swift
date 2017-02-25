//
//  Converter.swift
//  Hello_Swift
//
//  Created by Александр Смирнов on 25/02/17.
//  Copyright © 2017 alex. All rights reserved.
//

import Foundation


struct Converter {

    let forwardRatio:Double
    let backwardRatio:Double

    //степень округления
    var precision:Int
    
    func convertForward(amount:Double)->Double {
    
    return roundValue(amount: amount * forwardRatio, precision: self.precision)
    
    }
    
    
    func convertBackward(amount:Double)->Double {
        
        return roundValue(amount: amount * backwardRatio, precision: self.precision)
    }
    
    func roundValue(amount:Double, precision:Int)->Double {
    
    let multiply = pow(10,Double(precision))
    let newValue = round(amount * multiply) //round - встроенная функция округлящая до целых чисел
        return newValue / multiply
        
    }
    
}
