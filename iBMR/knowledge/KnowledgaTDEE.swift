//
//  KnowledgaTDEE.swift
//  iBMR
//
//  Created by 暨大附中 on 2022/3/6.
//

import SwiftUI

struct KnowledgaTDEE: View {
    @State var OnOff = false
    var body: some View {
        ZStack{
            Rectangle()
                .modifier(View_Background())
            ZStack{
                Rectangle()
                    .modifier(Rectangle_Tittle())
                Text("了解TDEE")
                    .modifier(Text_Tittle())
            }
            .padding(.bottom,700)
            Button{
                OnOff.toggle()
            }label:{
                ZStack{
                    Rectangle()
                        .frame(width: 300, height: 150)
                        .foregroundColor(.black)
                    Rectangle()
                        .frame(width: 290, height: 140)
                        .foregroundColor(Color("Green4"))
                    Text("點我了解")
                        .scaleEffect(2)
                        .frame(width: 290, height: 140)
                        .foregroundColor(.black)
                }
            }
            Button{
                OnOff.toggle()
            }label:{
                ZStack{
                    Rectangle()
                        .frame(width:400, height: 370)
                        .foregroundColor(.white)
                        .cornerRadius(20)
                    VStack(alignment:.leading,spacing:7){
                        Text("每日總消耗熱量")
                        Text("（total daily energy expenditure)")
                        Text("(簡稱TDEE指的是人體在一天內消耗的熱量")
                        Text("除了基礎代謝率所需的能量以外")
                        Text("還包括運動和其他活動消耗的熱量")
                        Text("像是走路、上下樓梯、活動肌肉等等")
                        Text("尿病、心血管疾病、惡性腫瘤等慢性")
                        Text("因此可想而知，")
                        Text("運動量越大的人，TDEE 也越高")
                    }
                    .scaleEffect(1.2)
                     .foregroundColor(.black)
                }
            }.offset(y: OnOff ? 0:800)
        }
    }
}
struct KnowledgaTDEE_Previews: PreviewProvider {
    static var previews: some View {
        KnowledgaTDEE()
    }
}
