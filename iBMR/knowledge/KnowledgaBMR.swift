//
//  knowledgaView.swift
//  iBMR
//
//  Created by 暨大附中 on 2022/3/6.
//

import SwiftUI

struct knowledgaBMR: View {
    @State var OnOff = false
    var body: some View {
        ZStack{
            Rectangle()
                .modifier(View_Background())
            ZStack{
                Rectangle()
                    .modifier(Rectangle_Tittle())
                Text("了解BMR")
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
                        Text("基礎代謝率（basic metabolicrate)")
                        Text("指的是人在自然環境")
                        Text("非劇烈活動的情況下")
                        Text("維持生存所消耗的最基本能量")
                        Text("這些能量用於新陳代謝")
                        Text("呼吸、消化、排泄、腺體分泌等等")
                        Text("幫助人體維持正常運作")
                    }
                    .scaleEffect(1.2)
                     .foregroundColor(.black)
                }
            }.offset(y: OnOff ? 0:800)
        }
    }
}

struct knowledgaBMR_Previews: PreviewProvider {
    static var previews: some View {
        knowledgaBMR()
    }
}
