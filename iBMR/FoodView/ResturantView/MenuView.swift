//
//  MenuView.swift
//  iBMR
//
//  Created by 暨大附中 on 2022/1/31.
//

import SwiftUI

struct MenuView: View {
    @StateObject var dDate = Foods()
    @State var Menushop = shop(title: "", products: [product(productname: "",cal: "",productprice: "",sortname: "")],combos: [combo( comboname: "", price: "", price2: "", other: "", comboimg: "")],works: [work(phone: "", address: "", Mon: "", Tue: "", Wed: "", Thu: "", Fri: "", Sat: "", Sun: "", x: "", y: "")])
    var body: some View {
        ZStack{
            Rectangle()
                .ignoresSafeArea()
                .foregroundColor(Color("Main Color"))
            ScrollView{
                VStack{
                    HStack{
                        Text("餐點")
                        Text("價錢")
                        Text("卡路里")
                       
                    }.font(.title)
                    ForEach(Menushop.products){ pf in
                        food3(name:pf.productname, cal: pf.cal, price: pf.productprice, sortname : pf.sortname)
                    }
                }
            }
        }
    }
}
   struct MenuView_Previews: PreviewProvider {
    static var previews: some View {
        MenuView()
    }
}

struct food3 : View{
    @State var name = ""
    @State var cal = ""
    @State var price = ""
    @State var sortname = ""
    var body: some View{
        VStack{
            Text("\(sortname)")
        HStack{
            Text("\(name)")
            Text("\(price)元")
            Text("\(cal)卡")
        }
        }.font(.title)

    }
}


