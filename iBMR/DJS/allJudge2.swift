//
//  allJudge2.swift
//  project
//
//  Created by 暨大附中２ on 2022/1/10.
//

import SwiftUI

struct DemoView: View {
    @StateObject var dData = DemoData()
    @State var demoJG = DTJG(title: "",  JGS: [JG]())
    var body: some View {
        
        ZStack{
            Rectangle()
                .foregroundColor(Color("Green"))
                .ignoresSafeArea()
            
            VStack {
                ZStack{
                Rectangle()
                    .frame(height: 60)
                    .foregroundColor(Color("Gray"))
                Text("店家評價總覽")
                    .scaleEffect(2)
                }
                .padding(.vertical,20)
                ScrollView {
                    VStack (spacing:30){
                        
                    ForEach(dData.DTJGS){ sp in
                        JGView(demoJG: sp)
                }
                    }
                }
            }
        }
    }
}

struct DemoView_Previews: PreviewProvider {
    static var previews: some View {
        DemoView()
    }
}

struct JGView: View {
    @StateObject var dData = DemoData()
    @State var demoJG = DTJG(title: "",  JGS: [JG]())
    var body: some View {
        HStack(spacing:50){
            ZStack{
                Rectangle()
                    .frame(height: 60)
                    .foregroundColor(Color("DarkGreen"))
                    .cornerRadius(18)
            Text(demoJG.title)
                    .font(.system(size: 36))
            }
            ZStack {
                Text("\(String(format:"%.1f",dData.avgpricevalue(JGS:demoJG.JGS)))")
                    .font(.system(size: 36))
            }
        }
        .padding(.horizontal,20)
    }
}
