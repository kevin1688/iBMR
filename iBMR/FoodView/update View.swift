//
//  update View.swift
//  iBMR
//
//  Created by 暨大附中 on 2022/2/11.
//

import SwiftUI

struct updateView: View {
    @ObservedObject var Menues = Foods()
    var body: some View {
        ZStack{
            Rectangle()
                .ignoresSafeArea()
                .foregroundColor(Color("Main Color"))
            VStack{
        Button("新增多筆商店資料") {
        Menues.addAll(shops:[
            shop(title:"阿寶",img : "MDL",Sortnames : [Sortname(sortname:"漢堡", products:[
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
                 combos:[combo(comboname:"雙蝦天婦羅堡" , price: "單點：144", price2: "199", other: "", comboimg:"15" ),
                         combo(comboname:"雙蝦天婦羅堡",price:"單點：144",price2:"199",other:"",comboimg:"15"),
                        combo(comboname:"炸蝦安格斯黑牛堡",price:"單點：144",price2:"199",other:"",comboimg:"16"),
                               combo(comboname:"現烤貝果",price:"單點：55",price2:"65",other:"（搭配38元指定飲料）",comboimg:"17"),
                 combo(comboname:"有氧雙人早餐",price:"",price2:"平均75折",other:"內含兩份主餐、大薯、6塊麥克雞與兩杯38元飲料",comboimg:"18")],
                 works: [work(phone:"04-9291-8438",address:"545南投縣埔里鎮信義路1037號",Mon:"星期一 06:00–00:00" , Tue: "星期二 06:00–00:00", Wed: "星期三 06:00–00:00", Thu: "星期四 06:00–00:00", Fri: "星期五 06:00–00:00", Sat: "星期六 06:00–00:00", Sun: "星期日 06:00–00:00", x: "X:23.971170864497946", y: "Y:120.95674583995995")
                        ]
                )
        ]    )
        }
        .font(.title)
                Button("新增一筆商店資料") {
                Menues.add(
                    shop: shop(title:"弘爺",img : "MOS",Sortnames : [Sortname(sortname:"漢堡", products:[
                    product(productname:"豬肉漢堡", cal :540, productprice: "50"),
                    product(productname:"豬肉滿福堡", cal : 720, productprice: "48"),
                    product(productname:"豬肉滿福堡加蛋", cal : 400, productprice: "58"),
                    product(productname:"無敵豬肉滿福堡加蛋", cal: 300, productprice: "78"),
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
                        combos:[combo(comboname:"雙蝦天婦羅堡" , price: "單點：144", price2: "199", other: "", comboimg:"15" ),
                                combo(comboname:"雙蝦天婦羅堡",price:"單點：144",price2:"199",other:"",comboimg:"15"),
                            combo(comboname:"炸蝦安格斯黑牛堡",price:"單點：144",price2:"199",other:"",comboimg:"16"),
                                    combo(comboname:"現烤貝果",price:"單點：55",price2:"65",other:"（搭配38元指定飲料）",comboimg:"17"),
                        combo(comboname:"有氧雙人早餐",price:"",price2:"平均75折",other:"內含兩份主餐、大薯、6塊麥克雞與兩杯38元飲料",comboimg:"18")],
                        works: [work(phone:"04-9291-8438",address:"545南投縣埔里鎮信義路1037號",Mon:"星期一 06:00–00:00" , Tue: "星期二 06:00–00:00", Wed: "星期三 06:00–00:00", Thu: "星期四 06:00–00:00", Fri: "星期五 06:00–00:00", Sat: "星期六 06:00–00:00", Sun: "星期日 06:00–00:00", x: "X:23.971170864497946", y: "Y:120.95674583995995")
                            ]
                    )
                )
                }.font(.title)
            Button("取得資料"){
                Menues.get()
            }.font(.title)
            }
        }
    }
}

struct updateView_Previews: PreviewProvider {
    static var previews: some View {
        updateView()
    }
}
