//
//  TempView.swift
//  classic10
//
//  Created by 暨大附中 on 2021/12/17.
//

import Foundation

class menu : ObservableObject{
    @Published var favor:Int=0
    @Published var newnumber = 0
    var name :String = ""
    init(value:String){
        name = value
    }
}

struct tempmenu {
    var name = ""
}

var foods2 = [
    menu(value: "蛋餅"),
    menu(value: "漢堡"),
    menu(value: "捲餅"),
    menu(value: "奶茶"),
    menu(value: "紅茶"),
    menu(value: "拿鐵")
]

var foods3 = [
    tempmenu(name: "阿寶")
]

