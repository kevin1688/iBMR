//
//  About store.swift
//  iBMR
//
//  Created by 暨大附中２ on 2022/1/30.
//

import SwiftUI

struct About_store: View {
    var body: some View {
        ZStack{
        Rectangle()
                .frame( maxWidth: .infinity,  maxHeight: .infinity)
            .foregroundColor(Color("Green"))
            .ignoresSafeArea()
        Rectangle()
            .frame(width: 400, height: 60, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
            .foregroundColor(Color("Gray"))
            .padding(.bottom,680)
        Text("相關資料")
            .foregroundColor(.black)
            .font(.largeTitle)
            .padding(.bottom,680)
        Rectangle()
            .frame(width: 400, height: 43, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
            .foregroundColor(Color("DarkGreen"))
            .cornerRadius(40)
            .padding(.bottom,530)
            Text("麥當勞") //   資料庫 1
            .foregroundColor(.black)
            .font(.largeTitle)
            .padding(.bottom,530)
            ZStack{
                Rectangle()
                    .frame(width: 390, height: 650)
                    .foregroundColor(Color("Gray2"))
                    .padding(.top,200)
                ScrollView{
                    VStack(alignment: .leading, spacing: 20){
                    VStack(alignment: .leading, spacing: 15){
                    Text("地址:545南投縣埔里鎮信義路1037號")
                        .font(.title)
                    Text("電話:04 9291 8438")
                        .font(.title)
                    Text("營業時間:")
                        .font(.title)
                    Text("星期一 06:00–00:00")
                        .font(.title)
                    Text("星期二 06:00–00:00")
                        .font(.title)
                    Text("星期三 06:00–00:00")
                        .font(.title)
                    Text("星期四 06:00–00:00")
                        .font(.title)
                    Text("星期五 06:00–00:00")
                        .font(.title)
                    Text("星期六 06:00–00:00")
                        .font(.title)
                    Text("星期日 06:00–00:00")
                        .font(.title)
                    }
                    VStack(alignment: .leading, spacing: 20){
                        Text("X:23.971170864497946")
                            .font(.title)
                        Text("Y:120.95674583995995")
                            .font(.title)
                    }
                    }
                }.padding(.top,220)
                }
            }
            }
    }
struct About_store_Previews: PreviewProvider {
    static var previews: some View {
        About_store()
    }
}
