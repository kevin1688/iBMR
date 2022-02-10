//
//  Comment View.swift
//  File Made
//
//  Created by 暨大附中10 on 2021/12/2.
//

import SwiftUI

struct Comment_View: View {
    
    var body: some View {
        
        ZStack{
            
            Rectangle()
                .modifier(View_Background())
            
            ZStack{
                
                Rectangle()
                    .frame(width: 500, height: 60)
                    .foregroundColor(.gray)
                    .offset(y: -350)
                
                Text("平均每日攝取熱量計算")
                    .scaleEffect(2)
                    .frame(width: 500, height: 60)
                    .offset(y: -350)
                
            }
            
            ZStack{
                
                Rectangle()
                    .frame(width:420, height: 350)
                    .foregroundColor(.white)
                    .cornerRadius(20)
                
                VStack(spacing:30){
                    
                    Text("無：久坐")
                        .offset(x:-86)
                    
                    Text("輕：每週運動1到3天（輕鬆）")
                        .offset(x:-8)
                    
                    Text("中：每週運動3到5天（中強度）")
                        .offset(x:2)
                    
                    Text("高：每週運動6到7天（高強度")
                        .offset(x:-8)
                }
                .scaleEffect(1.55)
            }
            .scaleEffect(0.85)
            
            
        }
    }
}

struct Comment_View_Previews: PreviewProvider {
    static var previews: some View {
        Comment_View()
    }
}
