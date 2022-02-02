//
//  About store.swift
//  iBMR
//
//  Created by 暨大附中２ on 2022/1/30.
//

import SwiftUI

struct Aboutstore: View {
    @State var title = ""
    @State var WorkShop = shop(title: "", products: [product(productname: "",cal: "",productprice: "",sortname: "")],combos: [combo( comboname: "", price: "", price2: "", other: "", comboimg: "")],works: [work(phone: "", address: "", Mon: "", Tue: "", Wed: "", Thu: "", Fri: "", Sat: "", Sun: "", x: "", y: "")])
    var body: some View {
        ZStack{
        Rectangle()
                .frame( maxWidth: .infinity,  maxHeight: .infinity)
            .foregroundColor(Color("Green"))
            .ignoresSafeArea()
            VStack{
        ZStack{
        Rectangle()
            .frame(width: 400, height: 60, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
            .foregroundColor(Color("Gray"))
        Text("相關資料")
            .foregroundColor(.black)
            .font(.largeTitle)
            }
            ZStack{
        Rectangle()
            .frame(width: 400, height: 43, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
            .foregroundColor(Color("DarkGreen"))
            .cornerRadius(40)
            Text("\(title)") //   資料庫 1
            .foregroundColor(.black)
            .font(.largeTitle)
            }
            
            ZStack{
                Rectangle()
                    .frame(width: 390, height: 800)
                    .foregroundColor(Color("Gray2"))
                ScrollView{
                    ForEach(WorkShop.works){wk in
                        workshop(phone: wk.phone, address: wk.address, Mon: wk.Mon, Tue: wk.Tue, Wed: wk.Wed, Thu: wk.Thu, Fri: wk.Fri, Sat: wk.Sat, Sun: wk.Sun, x: wk.x, y: wk.y)
                    }
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
                    Text("\(address)")
                          .font(.title)
                          Text("\(phone)")
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
    
    
    

