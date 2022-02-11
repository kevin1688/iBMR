//
//  Restaurant.swift
//  classic10
//
//  Created by 暨大附中 on 2021/12/28.
//

import SwiftUI

struct Restaurant: View {
    @ObservedObject var Menues = Foods()
    var body: some View {
        NavigationView {
            ZStack {
                    Rectangle()
                        .ignoresSafeArea()
                    .foregroundColor(Color("Main Color"))
                VStack {
                    Button("取得資料"){
                        Menues.get()
                    }
                    
                Button("新增多筆商店資料") {
                        Menues.addAll(shops: [
                                shop(title:"7-11",img : "19",Sortnames : [Sortname(sortname:"新鮮食品", products:[
                                    product(productname:"馥醇牛肉咖喱飯", cal : 699, productprice: "50"),
                                    product(productname:"日本黑毛和牛-壽喜燒御膳", cal :851, productprice: "48"),
                                    product(productname:"蒲燒鰻御膳", cal : 634, productprice: "58"),
                                    product(productname:"滿滿肉鬆小杯", cal: 289, productprice: "78"),
                                    product(productname:"千層巧克力捲捲", cal: 205, productprice: "58"),
                                    product(productname:"草莓巧克力雙饗", cal: 450, productprice: "48"),
                                    product(productname:"生餐包", cal: 320, productprice: "50"),
                                    product(productname:"巧克力熔岩蛋糕", cal: 376, productprice: "63"),
                                    product(productname:"繽紛藍莓扒扒包", cal: 461, productprice: "50"),
                                    product(productname:"帕瑪森起司蛋糕", cal: 304, productprice: "50"),
                                    product(productname:"雙起司湯種麵包", cal: 361, productprice: "50"),
                                    product(productname:"繽紛藍莓扒扒包", cal: 481, productprice: "50"),
                                    product(productname:"虎你旺(虎皮蛋糕)", cal: 302, productprice: "50")
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
                            
                        ])
                    }.padding(.bottom,100)
                    ZStack{
                    Rectangle()
                    .modifier(MainRectangleTitleMod())
                    Text("餐廳推薦")
                    .modifier(MainTitleMod())
                    }//.padding(.top,-80)
                    ScrollView{
                        ForEach(Menues.shops){ lp in
                                    NavigationLink {
                                        MDL_link(mshop:lp)
                                    } label: {
                                        shops(name:lp.title)
                                    }.modifier(textMod())
                                }
                    }
                }
                
            }
        }.edgesIgnoringSafeArea(.all)

    }
   /* @ViewBuilder func FoodName() -> some View{
        VStack{
            ForEach(Menues.ShoppName){ vn in
                VStack{
                    Text("\(vn.name)")
                    Image("\(vn.img)")
                }
                
            }
        }
    }*/
}

struct Restaurant_Previews: PreviewProvider {
    static var previews: some View {
        Restaurant()
    }
}

struct shops : View{
    @State var name : String
    var body: some View{
        VStack{
        Text("\(name)")
            Rectangle()
                .frame(width:.infinity, height:1, alignment:.center)
        }
    }
}

struct MainRectangleTitleMod:ViewModifier{
    
    @State var color:Color = Color.black
    
    func body(content: Content) -> some View{
        content
            .frame(width:.infinity , height: 60, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
            .foregroundColor(Color("Gray"))
    }
}

struct MainTitleMod:ViewModifier{
    
    @State var color:Color = Color.black
    
    func body(content: Content) -> some View{
        content
            .foregroundColor(.black)
            .font(.largeTitle)
    }
}
