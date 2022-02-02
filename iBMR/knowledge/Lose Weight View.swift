//
//  Lose Weight View.swift
//  File Made
//
//  Created by 暨大附中10 on 2021/12/26.
//

import SwiftUI

struct Lose_Weight_View: View {
    
    @State var OnOff = false
    
    @State var OnOff2 = false
    
    var body: some View {
        
        ZStack{
            
            Rectangle()
                .modifier(View_Background())
            
            ZStack{
                
                Rectangle()
                    .modifier(Rectangle_Tittle())
                
                Text("網路上的減肥方式")
                    .modifier(Text_Tittle())
            }
            .padding(.bottom,700)
            
            VStack{
                
                Button{
                    OnOff.toggle()
                }label:{
                    
                    ZStack{
                        
                        Rectangle()
                            .frame(width:350, height: 200)
                            .foregroundColor(.white)
                            .cornerRadius(20)
                        
                        
                        Text("證實有效可試的減肥方式")
                            .scaleEffect(1.5)
                            .foregroundColor(.black)
                    }
                }
                
                Spacer()
                    .frame(width:1, height: 100)
                
                Button{
                    OnOff2.toggle()
                }label:{
                    
                    ZStack{
                        
                        Rectangle()
                            .frame(width:350, height: 200)
                            .foregroundColor(.white)
                            .cornerRadius(20)
                        
                        Text("證實無效傷身的減肥方式")
                            .scaleEffect(1.5)
                            .foregroundColor(.black)
                    }
                }
            }
            Button{
                OnOff2.toggle()
            }label:{
                
                ZStack{
                    
                    Rectangle()
                        .frame(width:350, height: 200)
                        .foregroundColor(.white)
                        .cornerRadius(20)
                    
                    Text("減肥藥")
                        .scaleEffect(1.5)
                        .foregroundColor(.black)
                }
            }
            .padding(.top,300)
            .offset(y: OnOff2 ? 0:800)
            
            Button{
                OnOff.toggle()
            }label:{
                
                ZStack{
                    
                    Rectangle()
                        .frame(width:350, height: 640)
                        .foregroundColor(.white)
                        .cornerRadius(20)
                    
                    VStack{
                        
                        VStack(alignment:.leading,spacing:7){
                            
                            Text("抗性澱粉（resistant starch")
                            Text(",RS被定義為人體上消化道")
                            Text("（胃和小腸）不能消化吸收")
                            Text("的澱粉組分(Asp, Bjorck et ")
                            Text("al. 1987)簡單說，它雖然在")
                            Text("化學結構上是貨真價實的澱")
                            Text("粉，但不能被人體分解成葡")
                            Text("萄糖，然後被吸收到血液當")
                            Text("中，作為人體的能量來源")
                        }
                        .scaleEffect(1.2)
                        .foregroundColor(.black)
                        
                        Spacer()
                            .frame(width: 1, height:70)
                        
                        VStack(alignment:.leading,spacing:7){
                            
                            Text("當然，小腸沒有消化它它就會")
                            Text("比較完整地進入大腸，然後大")
                            Text("腸菌群中那些喜歡澱粉的品種")
                            Text("會非常歡迎它並因為「食物充")
                            Text("足」而繁榮起來，成為優勢比")
                            Text("較大的菌群，這些菌所產的丁")
                            Text("酸等短鏈脂肪酸，對人體維持")
                            Text("健康的腸道環境，預防高血脂")
                            Text("和腸癌等都是有益的")
                            
                        }
                        .scaleEffect(1.2)
                        .foregroundColor(.black)
                    }
                }
            }
            .padding(.top,70)
            .offset(y: OnOff ? 0:800)
            
            Rectangle()
                .frame(width: 450, height: 100)
                .padding(.top,850)
        }
    }
}

struct Lose_Weight_View_Previews: PreviewProvider {
    
    static var previews: some View {
        
        Lose_Weight_View()
    }
}




