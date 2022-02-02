//
//  BMR計算公式.swift
//  File Made
//
//  Created by 暨大附中10 on 2021/12/23.
//


import Foundation

class Cacu:ObservableObject{
    
    func BMR_Boy(weight:Float,height:Float,age:Float) -> Float{
     
     let anser = (13.7 * weight) + (5 * height) - (6.8 * age) + 66
     
     return anser
     
     }
     
     func BMR_Girl(weight:Float,height:Float,age:Float) -> Float{
     
     let anser = (9.6 * weight) + (1.8 * height) - (4.7 * age) + 655
     
     return anser
     
     }
    
}

