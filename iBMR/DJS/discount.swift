//
//  discount.swift
//  discount
//
//  Created by 暨大附中２ on 2021/12/17.
//

import SwiftUI

struct discount: View {    
    var body: some View {
        
            ZStack{
                Rectangle()
                    .frame(width: 420, height: 850, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    .foregroundColor(Color("Green"))
                Spacer()
                Spacer()
                VStack{
                    ZStack{
                Rectangle()
                    .frame(width: 400, height: 60, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    .foregroundColor(Color("Gray"))
                Text("優惠活動")
                    .foregroundColor(.black)
                    .font(.largeTitle)
                    }
                ZStack{
                Rectangle()
                    .frame(width: 280, height: 43, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    .foregroundColor(Color("DarkGreen"))
                    .cornerRadius(40)
                    Text("麥當勞")
                        .font(.title)
                }
                    ScrollView{
                        ForEach(Foodnames){ item in
                            foods(name: item.name, price: item.price,price2: item.price2,other: item.other,img: item.img)
                            
                        }
                    }
                }
            }
            .tabItem{
                Image(systemName:"star")
                    .resizable()
                    .frame(width: 50, height: 50)
            }
        }
    }
    

struct discount_Previews: PreviewProvider {
    static var previews: some View {
        discount()
    }
}
struct Foodname : Identifiable,Codable{
    
    var id = UUID()
    var name:String
    var price :String
    var price2 : String
    var other : String
    var img = ""
}
  var Foodnames :[Foodname] = [
        Foodname(name:"雙蝦天婦羅堡",price:"單點：144",price2:"199",other:"",img:"15"),
        Foodname(name:"炸蝦安格斯黑牛堡",price:"單點：144",price2:"199",other:"",img:"16"),
        Foodname(name:"現烤貝果",price:"單點：55",price2:"65",other:"（搭配38元指定飲料）",img:"17"),
        Foodname(name:"有氧雙人早餐",price:"",price2:"平均75折",other:"內含兩份主餐、大薯、6塊麥克雞與兩杯38元飲料",img:"18")
    ]

struct foods : View{
    
    @State var name : String
    @State var price : String
    @State var price2 : String
    @State var other : String
    @State var img = ""
    
    var body: some View{
        HStack{
            Image("\(img)")
                .resizable()
                .frame(width: 200, height: 200)
            VStack{
            Text("[\(name)]")
                .font(.title)
            Text("\(price)")
                .font(.title)
            Text("套餐：\(price2)")
                .font(.title)
                Text("\(other)")
                    .font(.title)
            }
        }
    }
}
