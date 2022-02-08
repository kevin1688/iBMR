//
//  MenuView.swift
//  iBMR
//
//  Created by 暨大附中 on 2022/1/31.
//

import SwiftUI

struct MenuView: View {
    @StateObject var dDate = Foods()
    @State var Menushop = shop(title: "", img: "", Sortnames: [Sortname(sortname: "", products: [product(productname:"", cal: Int(), productprice: "")])], combos: [combo(comboname: "", price: "", price2: "", other: "")], works: [work(phone: "", address: "", Mon: "", Tue: "", Wed: "", Thu: "", Fri: "", Sat: "", Sun: "", x: "", y: "")])

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
                    VStack{
                    ForEach(Menushop.Sortnames){ pf in
                        Text(pf.sortname)
                        ForEach(pf.products){ lk in
                            HStack{
                                Text("\(lk.productname)")
                                Text("\(lk.productprice)元")
                                Text("\(lk.cal)卡")
                            }
                        }
                    }
                    }.font(.title)
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
