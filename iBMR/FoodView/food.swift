//
//  Star.swift
//  classic10
//
//  Created by 暨大附中 on 2021/12/7.
//

import SwiftUI
import Combine
import FirebaseFirestore
import FirebaseFirestoreSwift

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
    
    let path: String = "iBMR"
    
    private let store = Firestore.firestore()
    
    @Published var shops = [shop]()
    init (){
        listenData()
    }
    
    func get(){ //取得資料
          store.collection(path).getDocuments { (querySnapshot, error) in
             if let querySnapshot = querySnapshot {
                self.shops = querySnapshot.documents.compactMap { document in
                  try? document.data(as: shop.self)
                }
             }else{
                 self.shops = [
                     shop(title:"麥當勞",img : "19",Sortnames : [Sortname(sortname:"漢堡", products:[
                         product(productname:"豬肉漢堡", cal : 290, productprice: "50"),
                         product(productname:"豬肉滿福堡", cal : 316, productprice: "48"),
                         product(productname:"豬肉滿福堡加蛋", cal : 389, productprice: "58"),
                         product(productname:"無敵豬肉滿福堡加蛋", cal: 509, productprice: "78"),
                         product(productname:"香鷄滿福堡加蛋", cal: 419, productprice: "58"),
                         product(productname:"香鷄滿福堡", cal: 346, productprice: "48"),
                         product(productname:"吉事蛋堡", cal: 282, productprice: "50"),
                         product(productname:"豬肉蛋堡", cal: 282, productprice: "63"),
                         product(productname:"火腿蛋堡", cal: 302, productprice: "50")
                     ]),Sortname(sortname:"鬆餅", products:[
                         product(productname:"豬肉鬆餅", cal: 439, productprice: "69"),
                         product(productname:"鬆餅3片", cal: 319, productprice: "55")
                     ]),Sortname(sortname: "大早餐", products: [
                         product(productname: "經典大早餐", cal: 411, productprice: "69"),
                         product(productname: "鷄塊鬆餅大早餐", cal: 664, productprice: "109")
                     ]),Sortname(sortname: "果堡", products: [
                         product(productname: "培根番茄嫩蛋焙果堡", cal: 440, productprice: "79"),
                         product(productname: "起司番茄嫩蛋焙果堡", cal: 421, productprice: "69"),
                         product(productname: "現烤焙果堡", cal: 244, productprice: "55")
                     ])
                                                             ],
                          combos:[combo(comboname:"雙蝦天婦羅堡" , price: "單點：144", price2: "199", other: "", comboimg:"15" )],
                          works: [work(phone:"04-9291-8438",address:"545南投縣埔里鎮信義路1037號",Mon:"星期一 06:00–00:00" , Tue: "星期二 06:00–00:00", Wed: "星期三 06:00–00:00", Thu: "星期四 06:00–00:00", Fri: "星期五 06:00–00:00", Sat: "星期六 06:00–00:00", Sun: "星期日 06:00–00:00", x: "X:23.971170864497946", y: "Y:120.95674583995995")
                                 ]
                         )
                 ]
             }
          }
        
    }
    
    func addAll(shops:[shop]) {//新增整批資料
        shops.forEach { item in
          do {
            _ = try store.collection(path).addDocument(from: item)
          } catch {
            fatalError("Unable to add card: \(error.localizedDescription).")
          }
        }
    }
    
    func add(shop: shop) {//新增資料
        do {
          _ = try store.collection(path).addDocument(from: shop)
        } catch {
          fatalError("Unable to add card: \(error.localizedDescription).")
        }
    }
    
    func listenData(){ //監聽資料變化
        
        store.collection(path).order(by:"title").addSnapshotListener { (querySnapshot, error) in
            guard let querySnapshot = querySnapshot else {
                return
            }
                    
            self.shops = querySnapshot.documents.compactMap { document in
                try? document.data(as: shop.self)
            }
        }
        
        
    }
}
struct shop : Identifiable,Codable{
    var id = UUID()
    var title :String
    var img = ""
    var Sortnames : [Sortname]
    var combos : [combo]
    var works : [work]
    
}
struct Sortname : Identifiable,Codable{
    var id = UUID()
    var sortname : String
    var products : [product]
}

struct product : Identifiable,Codable{
    var id = UUID()
    var productname:String
    var cal = Int()
    var productprice : String
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
