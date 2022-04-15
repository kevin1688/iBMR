//
//  About store.swift
//  iBMR
//
//  Created by 暨大附中２ on 2022/1/30.
//

import SwiftUI

struct Aboutstore: View {
    @State var title = ""
    @State var WorkShop = shop(title: "", img: "", Sortnames: [Sortname(sortname: "", products: [product(productname:"", cal: Int(), productprice: "")])], combos: [combo(comboname: "", price: "", price2: "", other: "")], works: [work(phone: "", address: "", Mon: "", Tue: "", Wed: "", Thu: "", Fri: "", Sat: "", Sun: "", x: "", y: "")])
    var body: some View {
        ZStack{
            Rectangle()
                .foregroundColor(Color("Green"))
                .ignoresSafeArea()
            VStack{
                ZStack{
                    Rectangle()
                        .modifier(MainRectangleTitleMod())
                    Text("相關資料")
                        .modifier(MainTitleMod())
                }
                ZStack{
                    Rectangle()
                        .frame(width: 400, height: 43, alignment: .center)
                        .foregroundColor(Color("DarkGreen"))
                        .cornerRadius(40)
                    Text("\(WorkShop.title)") //   資料庫 1
                        .foregroundColor(.black)
                        .font(.largeTitle)
                }
                ZStack{
                    Rectangle()
                        .frame(width: 390, height: 650)
                        .foregroundColor(Color("Gray2"))
                    ScrollView{
                        ForEach(WorkShop.works){wk in
                            workshop(phone: wk.phone, address: wk.address, Mon: wk.Mon, Tue: wk.Tue, Wed: wk.Wed, Thu: wk.Thu, Fri: wk.Fri, Sat: wk.Sat, Sun: wk.Sun, x: wk.x, y: wk.y)
                        }.padding(.top,40)
                    }
                }
            }
        }
    }
}
struct Aboutstore_Previews: PreviewProvider {
    static var previews: some View {
        Aboutstore()
    }
}

struct workshop : View{
    @State var title = ""
    @State var phone = ""
    @State var address = ""
    @State var Mon  = ""
    @State var Tue  = ""
    @State var Wed  = ""
    @State var Thu  = ""
    @State var Fri  = ""
    @State  var Sat  = ""
    @State var Sun  = ""
    @State var x  = ""
    @State var y  = ""
    
    var body: some View{
        VStack{
            Text("地址\(address)")
                .font(.title)
            Text("電話\(phone)")
                .font(.title)
        }
        VStack{
            Text("營業時間:")
                .font(.title)
            Text("\(Mon)")
                .font(.title)
            Text("\(Tue)")
                .font(.title)
            Text("\(Wed)")
                .font(.title)
            Text("\(Thu)")
                .font(.title)
            Text("\(Fri)")
                .font(.title)
            Text("\(Sat)")
                .font(.title)
            Text("\(Sun)")
                .font(.title)
            Text("\(x)")
                .font(.title)
            Text("\(y)")
                .font(.title)
        }
    }
}






