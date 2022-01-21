//
//  BMR Boy View.swift
//  File Made
//
//  Created by 暨大附中10 on 2021/12/23.
//

import SwiftUI

struct BMR_Boy_View: View {
    
    @StateObject var cacu = Cacu()
    
    @State var weight :String = "0"
    
    @State var height :String = "0"
    
    @State var age    :String = "0"
    
    @State var anser  :Float = 0
    
    var body: some View {
        
        ZStack{
            
            Rectangle()
                .modifier(View_Background())
            
            ZStack{
                
                Rectangle()
                    .modifier(Rectangle_Tittle())
                
                Text("平均每日攝取熱量計算")
                    .modifier(Text_Tittle())
            }
            .padding(.bottom,700)
            
            HStack{
                
                VStack(spacing:50){
                    
                    Text("輸入您的身高:")
                        .modifier(Small_Tittle())
                    
                    Text("輸入您的體重:")
                        .modifier(Small_Tittle())
                    
                    Text("輸入您的年齡:")
                        .modifier(Small_Tittle())
                }
                
                Spacer()
                    .frame(width:50, height: 190)
                
                VStack(spacing:50){
                    
                    ZStack{
                        Rectangle()
                            .frame(width: 130, height:50 )
                            .foregroundColor(.white)
                            .cornerRadius(10)
                    TextField("請輸入體重", text: $weight)
                        .modifier(TextField_Mod())
                    }
                    ZStack{
                        Rectangle()
                            .frame(width: 130, height:50 )
                            .foregroundColor(.white)
                            .cornerRadius(10)
                    TextField("請輸入體重", text: $height)
                        .modifier(TextField_Mod())
                    }
                    ZStack{
                        Rectangle()
                            .frame(width: 130, height:50 )
                            .foregroundColor(.white)
                            .cornerRadius(10)
                    TextField("請輸入體重", text:  $age)
                        .modifier(TextField_Mod())
                    }
                }
            }
            .scaleEffect(1.2)
            .padding(.bottom,200)
            .padding(.leading,12)
            
            HStack{
                
            Button {
                
                anser  = cacu.BMR_Boy(weight:Float(weight)!,height:Float(height)!,age:Float(age)!)
                
            } label: {
                
            ZStack{
                
            Rectangle()
                    .frame(width: 300, height: 50)
                    .background(Color(.white))
                    .foregroundColor(.white)
                    .cornerRadius(10)
                
            Text("完成")
                .scaleEffect(1.4)
                .foregroundColor(.black)
                .frame(width: 180, height: 40)
                
            }
            }
                
            }
            .scaleEffect(1.2)
            .padding(.top,300)
            
            ZStack{
                
            Rectangle()
                    .frame(width: 300, height: 50)
                    .background(Color(.white))
                    .foregroundColor(.white)
                    .cornerRadius(10)
                
            Text("您的BMR值:\(Int(anser))")
                .scaleEffect(1.4)
                .foregroundColor(.black)
                .frame(width: 300, height: 40)
            }
            .scaleEffect(1.2)
            .padding(.top,550)
            
            Rectangle()
                .frame(width: 450, height: 100)
                .padding(.top,850)
        }
    }
}

struct BMR_Boy_View_Previews: PreviewProvider {
    static var previews: some View {
        BMR_Boy_View()
    }
}
