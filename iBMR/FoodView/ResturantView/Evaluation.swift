//
//  ShopView.swift
//  classic10
//
//  Created by 暨大附中 on 2022/1/21.
//

import SwiftUI

struct Evaluation: View {
    @State var title = ""
    @State var onOff = false
    @State var stars = 0
    @State var img = ""
    @State var tempStars = 0
    @State var mshop = shop(title: "", img: "", Sortnames: [Sortname(sortname: "", products: [product(productname:"", cal: Int(), productprice: "")])], combos: [combo(comboname: "", price: "", price2: "", other: "")], works: [work(phone: "", address: "", Mon: "", Tue: "", Wed: "", Thu: "", Fri: "", Sat: "", Sun: "", x: "", y: "")])
    var body: some View {
        VStack {
            ZStack{
                Rectangle()
                    .ignoresSafeArea()
                    .foregroundColor(Color("Green"))
                ZStack{
                Rectangle()
                    .modifier(MainRectangleTitleMod())
                Text("餐廳評價")
                    .modifier(MainTitleMod())
                }
                .padding(.bottom,680)
                Rectangle()
                    .frame(width: 280, height: 43, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    .foregroundColor(Color("DarkGreen"))
                    .cornerRadius(40)
                    .padding(.bottom,500)
                Text("\(mshop.title)")
                    .foregroundColor(.black)
                    .font(.largeTitle)
                    .padding(.bottom,500)
                Image("\(mshop.img)")
                    .resizable()
                    .frame(width: 400, height: 380, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    .padding(.top,60)
                Rectangle()
                    .frame(width: 400, height: 80, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    .foregroundColor(Color("CentorGreen"))
                    .padding(.top,650)
                Stars(pointNumber: $stars, tempNumber: $tempStars)
                .padding(.top,640)
                HStack{
                Image(systemName: "star")
                    .resizable()
                    .frame(width: 30, height: 30, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                Text("\(tempStars == 0 ? Float(stars) : Float(stars) + 0.5 - 1)")
                    .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)}
                .padding(.top,790)
            }
          }
        }
    }
struct Evaluation_Previews: PreviewProvider {
    static var previews: some View {
        Evaluation()
    }
}
 
