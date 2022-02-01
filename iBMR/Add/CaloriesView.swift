//
//  CaloriesView.swift
//  File Made
//
//  Created by 暨大附中10 on 2021/12/26.
//

import SwiftUI

struct CaloriesView: View {
    
    @State var OnOff = false
    
    var body: some View {
        
        ZStack{
            
            Rectangle()
                .modifier(View_Background())
            
            ZStack{
                
                Rectangle()
                    .modifier(Rectangle_Tittle())
                
                Text("了解熱量")
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
                        .scaleEffect(2.2)
                        .frame(width: 290, height: 140)
                        .foregroundColor(.black)
                }
            }.offset(y: OnOff ? 800:0)
            
            Button{
                OnOff.toggle()
            }label:{
                
                ZStack{
                    
                    Rectangle()
                        .frame(width:350, height: 250)
                        .foregroundColor(.white)
                        .cornerRadius(20)
                    
                    VStack{
                        
                        Text("熱量概念")
                            .scaleEffect(1.2)
                        Spacer()
                            .frame(width: 1, height:20)
                        VStack(alignment:.leading,spacing:7){
                            
                        Text("世上萬物的運作都需要能量")
                        Text("我們身體的四肢能動、心臟")
                        Text("能跳、大腦能思考、能生長")
                        Text("發育、能繁衍後代沒有能量")
                        Text("是不行的")
                        }
                    }
                    .scaleEffect(1.2)
                    .foregroundColor(.black)
                }
            }
            .offset(y: OnOff ? 0:800)
            .padding(.bottom,350)
            
            Button{
                OnOff.toggle()
            }label:{
                
                ZStack{
                    
                    Rectangle()
                        .frame(width:350, height: 370)
                        .foregroundColor(.white)
                        .cornerRadius(20)
                    
                    VStack{
                        
                        Text("熱量的單位")
                            .scaleEffect(1.2)
                        Spacer()
                            .frame(width: 1, height:20)
                        VStack(alignment:.leading,spacing:7){
                            Text("在營養學上 ，最主要的熱量")
                            Text("單位是大卡 ( 千卡，kcal ) ，")
                            Text("一公克的醣類與蛋白質能提")
                            Text("供4大卡的熱量，脂肪為9大")
                            Text("卡，酒精也有熱量，每克的")
                            Text("酒精則能提供7大卡熱量，至")
                            Text("於營養素中的維生素、礦物")
                            Text("質、纖維和水則不會提供我們")
                            Text("身體熱量")
                        }
                    }
                    .scaleEffect(1.1)
                    .foregroundColor(.black)
                }
            }
            .offset(y: OnOff ? 0:800)
            .padding(.top,300)
            Rectangle()
                .frame(width: 450, height: 100)
                .padding(.top,850)
        }
    }
}

struct CaloriesView_Previews: PreviewProvider {
    
    static var previews: some View {
        
        CaloriesView()
    }
}
