//
//  BMR Girl View.swift
//  File Made
//
//  Created by 暨大附中10 on 2021/12/23.
//

import SwiftUI

struct BMR_Girl_View: View {
    @StateObject var cacu = Cacu()
    @State var weight :String = "0"
    @State var height :String = "0"
    @State var age    :String = "0"
    @State var anser  :Float = 0
    var body: some View {
        ZStack(alignment:.top){
            Rectangle()
                .modifier(View_Background())
            VStack(alignment: .center, spacing:45){
                ZStack{
                    Rectangle()
                        .modifier(Rectangle_Tittle())
                    Text("基礎代謝率")
                        .modifier(Text_Tittle())
                }
                //.padding(.bottom,700)
                VStack(spacing:65){
                    HStack(spacing: 40){
                        Text("輸入您的身高:")
                            .font(.system(size: 26))
                        ZStack{
                            Rectangle()
                                .frame(width: 156, height:60 )
                                .foregroundColor(.white)
                                .cornerRadius(10)
                            TextField("請輸入體重", text: $height)
                                .modifier(TextField_Mod())
                        }
                    }
                    HStack(spacing: 40){
                        Text("輸入您的體重:")
                            .font(.system(size: 26))
                        ZStack{
                            Rectangle()
                                .frame(width: 156, height:60 )
                                .foregroundColor(.white)
                                .cornerRadius(10)
                            TextField("請輸入體重", text: $weight)
                                .modifier(TextField_Mod())
                        }
                    }
                    HStack(spacing: 40){
                        Text("輸入您的年齡:")
                            .font(.system(size: 26))
                        ZStack{
                            Rectangle()
                                .frame(width: 156, height:60 )
                                .foregroundColor(.white)
                                .cornerRadius(10)
                            TextField("請輸入體重", text: $age)
                                .modifier(TextField_Mod())
                        }
                    }
                    Button {
                        anser  = cacu.BMR_Girl(weight:Float(weight)!,height:Float(height)!,age:Float(age)!)
                    } label: {
                        ZStack{
                            Rectangle()
                                .frame(width: 370, height: 60)
                                .background(Color(.white))
                                .foregroundColor(.white)
                                .cornerRadius(10)
                            Text("完成")
                                .font(.system(size: 25))
                            //.scaleEffect(1.4)
                                .foregroundColor(.black)
                                .frame(width: 3000, height: 40)
                        }
                    }
                    ZStack{
                        Rectangle()
                            .frame(width: 370, height: 60)
                            .background(Color(.white))
                            .foregroundColor(.white)
                            .cornerRadius(10)
                        Text("您的BMR值:\(Int(anser))")
                            .font(.system(size: 25))
                        // .scaleEffect(1.4)
                            .foregroundColor(.black)
                        //.frame(width: 300, height: 40)
                    }
                    //Spacer()
                    // .frame(width:50, height: 190)
                }
            }
            // .scaleEffect(1.2)
            // .padding(.bottom,200)
            // .padding(.leading,12)
            //.scaleEffect(1.2)
            //.padding(.top,300)
            //.scaleEffect(1.2)
            //.padding(.top,550)
            
        }
        }
}

struct BMR_Girl_View_Previewss: PreviewProvider {
    static var previews: some View {
        BMR_Girl_View()
    }
}
