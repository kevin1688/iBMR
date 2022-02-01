//
//  Star.swift
//  classic10
//
//  Created by 暨大附中 on 2021/12/7.
//

import SwiftUI

struct foodname : Identifiable,Codable{
    var id = UUID()
    var name:String
    var prise : String
    var img = ""
    var numbers : Int
}



struct shoppname : Identifiable,Codable{
    var id = UUID()
    var name:String
    var img = ""
}

class Foods:ObservableObject{
    @Published var shops = [shop]()
    init (){
        shops = [
            shop(title:"麥當勞", address: "埔里國中旁",img : "19",products:[
                product(name: "1234",cal: "36")
            ]),
            shop(title:"7-11", address: "埔里國下面",img : "18",products:[
                product(name: "5678",cal: "27")
            ])
        ]
    }
}

struct FoodName2 : Identifiable,Codable{
    
    var id = UUID()
    var name:String
    var price :String
    var price2 : String
    var other : String
    var img = ""
}
  var FoodNames2 :[FoodName2] = [
        FoodName2(name:"雙蝦天婦羅堡",price:"單點：144",price2:"199",other:"",img:"15"),
        FoodName2(name:"炸蝦安格斯黑牛堡",price:"單點：144",price2:"199",other:"",img:"16"),
        FoodName2(name:"現烤貝果",price:"單點：55",price2:"65",other:"（搭配38元指定飲料）",img:"17"),
        FoodName2(name:"有氧雙人早餐",price:"",price2:"平均75折",other:"內含兩份主餐、大薯、6塊麥克雞與兩杯38元飲料",img:"18")
    ]
struct shop : Identifiable,Codable{
    var id = UUID()
    var title :String
    var address :String
    var img = ""
    var products:[product]
}

struct product : Identifiable,Codable{
    var id = UUID()
    var name:String
    var cal :String
}

class MDL : ObservableObject{
    @Published var MDLfooods = [MDLfood]()
    init(){
        MDLfooods=[ MDLfood(title: "評價")
        ]
    }
}
struct MDLfood : Identifiable,Codable{
    var id = UUID()
    var title :String
}



struct products:Identifiable,Hashable,Codable {
    var id = UUID().uuidString
    var title:String
    var img:String
}
