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
            shop(title:"麥當勞",img : "19",products:[
                product(productname: "漢堡",cal: "25"),
                product(productname: "薯條",cal: "25")
                
                
                
            ],combos:[combo(comboname:"雙蝦天婦羅堡" , price: "單點：144", price2: "199", other: "", comboimg:"15" )
                     
                     
                     
                     
                     
                     
                     
                     ],
                 
                 
                 
                 
                 
                 works: [work(phone:"電話:04 9291 8438",address:"地址:545南投縣埔里鎮信義路1037號",Mon:"星期一 06:00–00:00" , Tue: "星期二 06:00–00:00", Wed: "星期三 06:00–00:00", Thu: "星期四 06:00–00:00", Fri: "星期五 06:00–00:00", Sat: "星期六 06:00–00:00", Sun: "星期日 06:00–00:00", x: "X:23.971170864497946", y: "Y:120.95674583995995")]
                ),
            
            
            
            
            
            shop(title:"KFC",img : "18",products:[
                product(productname: "舒跑",cal: "34")
                
                
                
                
                
                
                
                
            ],combos: [combo( comboname:"雙蝦天婦羅堡"  , price:"單點：144" , price2: "199", other: "",comboimg:"15")
                      
                      
                      
                      
                      
                      
                      
                      
                      ], works: [work(phone:"電話:04 9291 8438",address:"地址:545南投縣埔里鎮信義路1037號",Mon:"星期一 06:00–00:00" , Tue: "星期二 06:00–00:00", Wed: "星期三 06:00–00:00", Thu: "星期四 06:00–00:00", Fri: "星期五 06:00–00:00", Sat: "星期六 06:00–00:00", Sun: "星期日 06:00–00:00", x: "X:23.971170864497946", y: "Y:120.95674583995995")])
        ]
    }
}
struct shop : Identifiable,Codable{
    var id = UUID()
    var title :String
    var img = ""
    var products:[product]
    var combos : [combo]
    var works : [work]
}

struct product : Identifiable,Codable{
    var id = UUID()
    var productname:String
    var cal :String
}

struct combo : Identifiable,Codable{
    var id = UUID()
    var comboname : String
    var price : String
    var price2 : String
    var other : String
    var comboimg = ""
}

struct work : Identifiable,Codable{
    var id = UUID()
    var phone : String
    var address : String
    var Mon : String
    var Tue : String
    var Wed : String
    var Thu : String
    var Fri : String
    var Sat : String
    var Sun : String
    var x : String
    var y : String
}
