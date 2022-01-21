//
//  MDL link.swift
//  iBMR
//
//  Created by 暨大附中 on 2022/1/21.
//

import SwiftUI

struct MDL_link: View {
    @StateObject var Mydate = Foods()
    @State var mshop = shop(title: "", address: "", products: [product(name: "")])
    
    var body: some View {
        
            ZStack{
            VStack(spacing: 30){
                HStack(spacing: 30){
                    NavigationLink() {
                        Evaluation()
                    } label: {
                        ZStack{
                        Rectangle()
                            .frame(width:170, height: 170, alignment: .center)
                            .foregroundColor(Color("DarkGreen"))
                            .cornerRadius(18)
                            Text("去評價")
                                .font(.title)
                                .foregroundColor(.black)
                        }
                    }
                    NavigationLink {
                        discount()
                    } label: {
                        ZStack{
                        Rectangle()
                            .frame(width:170, height: 170, alignment: .center)
                            .foregroundColor(Color("DarkGreen"))
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
                            .frame(width:170, height: 170, alignment: .center)
                            .foregroundColor(Color("DarkGreen"))
                            .cornerRadius(18)
                            Text("看評價")
                                .font(.title)
                                .foregroundColor(.black)
                        }
                    }
                    NavigationLink {
                        allJudge()
                    } label: {
                        ZStack{
                        Rectangle()
                            .frame(width:170, height: 170, alignment: .center)
                            .foregroundColor(Color("DarkGreen"))
                            .cornerRadius(18)
                            Text("菜單")
                                .font(.title)
                                .foregroundColor(.black)
                        }
                    }
                }
                HStack{
                NavigationLink {
                    allJudge()
                } label: {
                    ZStack{
                    Rectangle()
                        .frame(width:170, height: 170, alignment: .center)
                        .foregroundColor(Color("DarkGreen"))
                        .cornerRadius(18)
                        Text("店家資料")
                            .font(.title)
                            .foregroundColor(.black)
                    }
                }
                .padding(.trailing,200)
                }
            }
        }
    }
}
struct MDL_link_Previews: PreviewProvider {
    static var previews: some View {
        MDL_link()
    }
}
