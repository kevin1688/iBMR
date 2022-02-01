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
                    .frame(width: 420, height: 860, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
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
                        ForEach(FoodNames2){ item in
                            Foods2(name: item.name, price: item.price,price2: item.price2,other: item.other,img: item.img)
                            
                        }
                    }
                }
            }
        }
    }
    

struct discount_Previews: PreviewProvider {
    static var previews: some View {
        discount()
    }
}

struct Foods2 : View{
    
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

