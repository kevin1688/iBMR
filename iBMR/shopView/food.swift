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

class FoodList:ObservableObject{
    
    @Published var FoodName:[foodname] = [foodname]()
    
    init(){
        foodshow()
    }
    func foodshow() {
        FoodName = [
            foodname(name:"蛋餅",prise: "20",img:"egg",numbers: 0),
            foodname(name: "吐司",prise: "20",img:"toast",numbers: 0),
            foodname(name:"捲餅",prise: "20",img:"1",numbers: 0),
            foodname(name:"漢堡",prise: "20",img:"3",numbers: 0),
            foodname(name:"義大利麵",prise: "20",img:"2",numbers: 0),
            foodname(name:"鍋貼",prise: "20",img:"4",numbers: 0),
            foodname(name:"奶茶",prise: "20",img:"5",numbers: 0),
            foodname(name:"紅茶",prise: "20",img:"6",numbers: 0)
        ]
    }
    func addNumber(){
        FoodName[0].numbers = FoodName[0].numbers+1
    }
    
}

struct shoppname : Identifiable,Codable{
    var id = UUID()
    var name:String
    var img = ""
}

class ShoppList:ObservableObject{
    
    @Published var ShoppName:[shoppname] = [shoppname]()
    
    init(){
        shoppshow()
    }
    func shoppshow() {
        ShoppName = [
            shoppname(name:"麥當勞",img : "egg"),
            shoppname(name:"全家",img : "4"),
            shoppname(name:"7-11",img:"5"),
            shoppname(name:"阿寶",img:"6")
        ]
    }
    
}

class Foods:ObservableObject{
    @Published var shops = [shop]()
    init (){
        shops = [
            shop(title:"麥當勞", address: "埔里國中旁",img : "19",products:[
                product(name: "1234"),
            ]),
            shop(title:"7-11", address: "埔里國下面",img : "18",products:[
                product(name: "5678"),
            ])
        ]
    }
}
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




