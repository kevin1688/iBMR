//
//  MDL link.swift
//  iBMR
//
//  Created by 暨大附中 on 2022/1/21.
//

import SwiftUI

struct MDL_link: View {
    @StateObject var Mydate = Foods()
    @State var mshop = shop(title: "", img: "", Sortnames: [Sortname(sortname: "", products: [product(productname:"", cal: "", productprice: "")])], combos: [combo(comboname: "", price: "", price2: "", other: "")], works: [work(phone: "", address: "", Mon: "", Tue: "", Wed: "", Thu: "", Fri: "", Sat: "", Sun: "", x: "", y: "")])
    var body: some View {
            ZStack{
                Rectangle()
                    .ignoresSafeArea()
                    .foregroundColor(Color("Main Color"))
            VStack(spacing: 30){
                HStack(spacing: 30){
                    NavigationLink() {
                        Evaluation(title:mshop.title, img:mshop.img)
                    } label: {
                        ZStack{
                            Rectangle()
                                .frame(width:180, height: 180, alignment: .center)
                                .foregroundColor(.black)
                                .cornerRadius(20)
                        Rectangle()
                            .frame(width:170, height: 170, alignment: .center)
                            .foregroundColor(Color("Green4"))
                            .cornerRadius(18)
                            Text("去評價")
                                .font(.title)
                                .foregroundColor(.black)
                        }
                    }
                    NavigationLink {
                        MenuView( Menushop: mshop)
                    } label: {
                        ZStack{
                            Rectangle()
                                .frame(width:180, height: 180, alignment: .center)
                                .foregroundColor(.black)
                                .cornerRadius(20)
                        Rectangle()
                            .frame(width:170, height: 170, alignment: .center)
                            .foregroundColor(Color("Green4"))
                         .cornerRadius(18)
                        Text("優惠活動")
                            .font(.title)
                            .foregroundColor(.black)
                            .font(.title)
                            .foregroundColor(.black)
                    }
                }
                }
                HStack(spacing: 30){
                    NavigationLink {
                        allJudge()
                    } label: {
                        ZStack{
                            Rectangle()
                                .frame(width:180, height: 180, alignment: .center)
                                .foregroundColor(.black)
                                .cornerRadius(20)
                        Rectangle()
                            .frame(width:170, height: 170, alignment: .center)
                            .foregroundColor(Color("Green4"))
                            .cornerRadius(18)
                            Text("看評價")
                                .font(.title)
                                .foregroundColor(.black)
                        }

                    } 
                    NavigationLink {
                        /*VStack{
                            ForEach(mshop.products){ po in
                                Text(po.name)
                                Text(po.cal)
                            }
                        }
                         */
                        MenuView( Menushop: mshop)
                    } label: {
                        ZStack{
                            Rectangle()
                                .frame(width:180, height: 180, alignment: .center)
                                .foregroundColor(.black)
                                .cornerRadius(20)
                        Rectangle()
                            .frame(width:170, height: 170, alignment: .center)
                            .foregroundColor(Color("Green4"))
                            .cornerRadius(18)
                            Text("菜單")
                                .font(.title)
                                .foregroundColor(.black)
                        }
                    }
                }
                HStack{
                NavigationLink {
                    Aboutstore(title:mshop.title, WorkShop: mshop)
                } label: {
                    ZStack{
                        Rectangle()
                            .frame(width:180, height: 180, alignment: .center)
                            .foregroundColor(.black)
                            .cornerRadius(20)
                    Rectangle()
                        .frame(width:170, height: 170, alignment: .center)
                        .foregroundColor(Color("Green4"))
                        .cornerRadius(18)
                        Text("店家資料")
                            .font(.title)
                            .foregroundColor(.black)
                    }
                }
                }
                .padding(.trailing,200)
                }
            }
        }
    }
struct MDL_link_Previews: PreviewProvider {
    static var previews: some View {
        MDL_link()
    }
}

