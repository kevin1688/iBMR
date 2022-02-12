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
        Button("新增多筆商店資料") {
        Menues.addAll(shops: [
            shop(title:"7-11",img : "19",Sortnames : [Sortname(sortname:"新鮮食品", products:[
                product(productname:"馥醇牛肉咖喱飯", cal : 699, productprice: "85"),
                product(productname:"日本黑毛和牛-壽喜燒御膳", cal :851, productprice: "299"),
                product(productname:"蒲燒鰻御膳", cal : 634, productprice: "159"),
                product(productname:"滿滿肉鬆小杯", cal: 289, productprice: "42"),
                product(productname:"千層巧克力捲捲", cal: 205, productprice: "39"),
                product(productname:"草莓巧克力雙饗", cal: 450, productprice: "39"),
                product(productname:"生餐包", cal: 320, productprice: "35"),
                product(productname:"巧克力熔岩蛋糕", cal: 376, productprice: "39"),
                product(productname:"繽紛藍莓扒扒包", cal: 461, productprice: "42"),
                product(productname:"帕瑪森起司蛋糕", cal: 304, productprice: "45"),
                product(productname:"雙起司湯種麵包", cal: 361, productprice: "39"),
                product(productname:"虎你旺(虎皮蛋糕)", cal: 481, productprice: "42")
            ]),Sortname(sortname:"御飯糰", products:[
                product(productname:"新極上飯糰-御選蒲燒鰻", cal: 215, productprice: "49"),
                product(productname:"握便當-經典奮起湖", cal: 351, productprice: "45"),
                product(productname:"握便當-黑胡椒烤雞排", cal: 341, productprice: "45"),
                product(productname:"吳留手-明太子鮭魚烤飯糰", cal:186, productprice: "42"),
                product(productname:"乾杯炭火燒肉烤飯糰", cal: 202, productprice: "42"),
                product(productname:"培根玉米蛋飯糰", cal: 228, productprice: "33"),
                product(productname:"一風堂-唐揚雞烤飯糰", cal: 229, productprice: "45"),
                product(productname: "燻雞飯糰 ", cal: 200, productprice: "33"),
                product(productname: "蝦仁蛋鬆拌飯飯糰(圓)", cal:179 , productprice: "35"),
                product(productname: "新極上飯糰-鮭魚鮭魚卵 ", cal:178 , productprice: "42"),
                product(productname: "泰式打拋雞飯糰", cal: 210, productprice: "30"),
                product(productname: "乾杯握便當-鹽烤燒肉雙拼", cal:440 , productprice: "59"),
                product(productname: "阜杭豆漿-經典飯糰", cal:533 , productprice: "45"),
                product(productname: "阜杭豆漿-香鬆飯糰", cal:477 , productprice: "45"),
                product(productname: "請客樓-麻油雞飯糰", cal: 354, productprice: "48"),
                product(productname: "新極上飯糰-鹽烤松阪豬", cal:198 , productprice: "42"),
                product(productname: "l鮭魚海帶芽飯糰(圓)", cal:185 , productprice: "33"),
                product(productname: "石安牧場溏心蛋筍飯飯糰(圓)", cal: 167, productprice: "35"),
                product(productname: "晶華-剝皮辣椒雞米飽", cal:260 , productprice: "49"),
                product(productname: "熱浪島-泰式打拋飯糰", cal:202 , productprice: "36"),
                product(productname: "壹番屋-雙起司雞肉咖哩飯糰", cal: 251, productprice: "39"),
                product(productname: "海陸雙拼壽司組", cal:507 , productprice: "69"),
                product(productname: "21Plus蔥鹽雞米飽", cal:288 , productprice: "45"),
                product(productname: "炙燒明太子鮭魚飯糰", cal:177 , productprice: "33"),
                product(productname: "京都豆皮壽司", cal: 278, productprice: "42"),
                product(productname: "秋鮭鮪魚雙手卷", cal: 342, productprice: "49"),
                product(productname: "肉鬆玉子雙手卷 ", cal: 405, productprice: "49"),
                product( productname: "雞肉飯飯糰", cal: 206, productprice: "28"),
                product( productname: "哇沙米鮭魚飯糰", cal: 212, productprice: "33"),
                product( productname: "魚卵小龍蝦沙拉飯糰", cal:211 , productprice: "33"),
                product( productname: "燒肉泡菜飯糰", cal:194 , productprice: "33"),
                product( productname: "炙燒雪花牛飯糰", cal:212 , productprice: "36"),
                product( productname: "蔥鹽燒肉飯糰", cal: 207, productprice: "30"),
                product( productname: "御選肉鬆飯糰", cal:213 , productprice: "28"),
                product( productname: "雙蔬鮪魚飯糰", cal: 209, productprice: "30")
            ]),Sortname(sortname: "原賞", products: [
                product(productname: "青醬雞肉軟法", cal: 411, productprice: "69"),
                product(productname: "藍莓乳酪三明治", cal: 664, productprice: "109"),
                product(productname: "石安牧場蛋沙拉三明治", cal: 664, productprice: "109"),
                product(productname: "起司火腿蛋三明治", cal: 664, productprice: "109"),
                product(productname: "照燒雞溏心蛋三明治", cal: 664, productprice: "109"),
                product(productname: "紐奧良風味鮮蔬烤雞三明治 ", cal: 664, productprice: "109"),
                product(productname: "勁辣雞腿堡", cal: 664, productprice: "109"),
                product(productname: "吉士豬肉堡", cal: 664, productprice: "109"),
                product(productname: "吉士豬肉堡加蛋", cal: 664, productprice: "109")
            ]),Sortname(sortname: "光合", products: [
                product(productname: "鹽麴雞腿時蔬沙拉餐", cal: 440, productprice: "79"),
                product(productname: "一日野菜-八種蔬菜溫沙拉", cal: 421, productprice: "69")
            ])
                                                     ],
                 combos:[combo( comboname: "", price: "", price2: "", other: "", comboimg: "")],
                 works: [work(phone:"",address: "", Mon: "", Tue: "", Wed: "", Thu: "", Fri: "", Sat: "", Sun: "", x: "", y: "")]
                ),
            shop(title: "肯德基", img: "19", Sortnames: [Sortname(sortname: "漢堡", products: [product( productname: "豬肉口味", cal: 39,productprice: "120")])], combos: [combo( comboname: "", price: "", price2: "", other: "", comboimg: "")], works: [work(phone: "", address: "", Mon: "", Tue: "", Wed: "", Thu: "", Fri: "",Sat: "", Sun: "", x: "", y: "")])
        ]
    )
        }
        }
    }
}

struct updateView_Previews: PreviewProvider {
    static var previews: some View {
        updateView()
    }
}
