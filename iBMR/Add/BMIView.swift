//
//  BMIView.swift
//  File Made
//
//  Created by 暨大附中10 on 2021/12/24.
//

import SwiftUI

struct BMIView: View {
    
    @State var OnOff = false
    
    var body: some View {
        
        ZStack{
            
            Rectangle()
                .modifier(View_Background())
            
            ZStack{
                
                Rectangle()
                    .modifier(Rectangle_Tittle())
                
                Text("了解BMI")
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
                        .foregroundColor(.orange)
                    
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
                        
                        Text("世界衛生組織建議以身體質量指數")
                        
                        Text("(Body Mass Index,BMI來衡量肥胖")
                        
                        Text("程度，其計算公式是以體重（公斤）")
                        
                        Text("除以身高（公尺）的平方 研究顯示")
                        
                        Text("體重過重或是肥胖（BMI≧24）為糖")
                        
                        Text("尿病、心血管疾病、惡性腫瘤等慢性")
                        
                        Text("疾病的主要風險因素；而過瘦的健康")
                        
                        Text("問題則會有營養不良、骨質疏鬆、猝")
                        
                        Text("死等健康問題")
                    }
                    .scaleEffect(1.2)
                     .foregroundColor(.black)
                }
            }.offset(y: OnOff ? 0:800)
            
            Rectangle()
                .frame(width: 450, height: 100)
                .padding(.top,850)
        }
    }
}

struct BMIView_Previews: PreviewProvider {
    
    static var previews: some View {
        
        BMIView()
    }
}
