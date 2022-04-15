//
//  TDEE View.swift
//  File Made
//
//  Created by 暨大附中10 on 2021/12/27.
//

import SwiftUI

struct TDEE_View: View {
    @State var anser:Double = 0.0
    @State var keyNumber:Double = 0.0
    @State var pointNumber:Double = 0.0
    @State var keyNumberString = "0"
    @State var keyNumberString_temp = "0"
    var body: some View {
        ZStack(alignment:.top) {
            Rectangle()
                .modifier(View_Background())
            VStack(spacing:20){
                ZStack{
                    Rectangle()
                        .modifier(Rectangle_Tittle())
                    Text("TDEE計算")
                        .modifier(Text_Tittle())
                }
                //.padding(.bottom,700)
                Text("\(String(format: "%.2f",anser))")
                    .font(.system(size: 36, weight: .black, design: .rounded))
                    .frame(width: 300, height: 75, alignment: .center)
                    .background(Color("DarkGreen"))
                    .foregroundColor(.white)
                    .cornerRadius(15)
                    //.scaleEffect(1.5)
                    //.padding(.bottom,470)
                Text("完成")
                    .font(.system(size: 36, weight: .black, design: .rounded))
                    .frame(width: 300, height: 75, alignment: .center)
                    .background(Color.white)
                    .cornerRadius(15)
                    //.scaleEffect(1.5)
                    //.padding(.bottom,270)
                    .onTapGesture {
                        anser = Double(keyNumberString)! * pointNumber
                    }
                VStack(alignment:.leading,spacing:20) {
                    HStack(spacing:11){
                        Text("輸入您的BMR:")
                           // .modifier(Small_Tittle_k())
                            .font(.system(size: 32, weight: .black, design: .rounded))
                        ZStack{
                            Rectangle()
                                .modifier(TextField_Mod())
                                .foregroundColor(.white)
                            ZStack{
                                Rectangle()
                                    .frame(width: 130, height:50 )
                                    .foregroundColor(.white)
                                    .cornerRadius(10)
                            TextField("輸入您的BMR", text: $keyNumberString)
                                .font(.system(size: 24, weight: .black, design: .rounded))
                                .frame(width: 120, height: 50, alignment: .center)
                                .keyboardType(.numberPad)
                                .foregroundColor(.black)
                              }
                        }
                    }
                    HStack(spacing:20){
                        Text("選擇您的運動量:")
                            //.scaleEffect(1.8)
                            .font(.system(size: 32, weight: .black, design: .rounded))
                            .frame(height: 60)
                        NavigationLink(
                            destination: Comment_View(),
                            label: {
                                ZStack{
                                    Circle()
                                        .frame(width: 40, height: 40)
                                        .foregroundColor(.white)
                                    Text("?")
                                        .font(.largeTitle)
                                        .foregroundColor(.black)
                                        .frame(width: 40, height: 40)
                                }
                            }
                        )
                    }
                }
                //.scaleEffect(1.1)
                //.padding(.bottom,90)
                //.offset(x:10)
                //.scaleEffect(1.1)
                //.offset(x:20)
                //.padding(.top,50)
                HStack{
                    VStack{
                        KeyNumberA(setNumber: 1.2, keyNumber: $pointNumber, keyNumberSting: $keyNumberString_temp,color: Color("Green3"))
                            .cornerRadius(10)
                        KeyNumberC(setNumber: 1.55, keyNumber: $pointNumber, keyNumberSting: $keyNumberString_temp,color: Color("Green3"))
                            .cornerRadius(10)
                    }
                    VStack{
                        KeyNumberB(setNumber: 1.375, keyNumber: $pointNumber, keyNumberSting: $keyNumberString_temp,color: Color("Green3"))
                            .cornerRadius(10)
                        KeyNumberD(setNumber:1.725, keyNumber: $pointNumber, keyNumberSting: $keyNumberString_temp,color: Color("Green3"))
                            .cornerRadius(10)
                    }
                }
                .padding(50)
                //.scaleEffect(1.4)
                //.padding(.top,420)
                //Rectangle()
                    //.frame(width: 450, height: 100)
                    //.padding(.top,850)
            }
        }
    }
}
struct TDEE_View_Previews: PreviewProvider {
    static var previews: some View {
        TDEE_View()
    }
}
struct KeyNumberA: View {
    @State var setNumber = 0.0
    @Binding var keyNumber:Double
    @Binding var keyNumberSting:String
    @State var color:Color = .red
    var body: some View {
        ZStack {
            Rectangle()
                .foregroundColor(color)
            Text("無")
                .font(.system(size: 36, weight: .bold, design: .rounded))
                //.frame(width: 100, height: 100, alignment: .center)
                //.background(color)
                .foregroundColor(.white)
                .onTapGesture {
                    keyNumber = setNumber
                    keyNumberSting = String(keyNumber)
            }
        }
    }
}
struct KeyNumberB: View {
    @State var setNumber = 0.09
    @Binding var keyNumber:Double
    @Binding var keyNumberSting:String
    @State var color:Color = .red
    var body: some View {
        ZStack {
            
            Rectangle()
                .foregroundColor(color)
            Text("輕量")
                .font(.system(size: 36, weight: .bold, design: .rounded))
                //.frame(width: 100, height: 100, alignment: .center)
                //.background(color)
                .foregroundColor(.white)
                .onTapGesture {
                    keyNumber = setNumber
                    keyNumberSting = String(keyNumber)
            }
        }
    }
}

struct KeyNumberC: View {
    @State var setNumber = 0.0
    @Binding var keyNumber:Double
    @Binding var keyNumberSting:String
    @State var color:Color = .red
    var body: some View {
        ZStack {
            Rectangle()
                .foregroundColor(color)
            Text("中度")
                .font(.system(size: 36, weight: .bold, design: .rounded))
                //.frame(width: 100, height: 100, alignment: .center)
                //.background(color)
                .foregroundColor(.white)
                .onTapGesture {
                    keyNumber = setNumber
                    keyNumberSting = String(keyNumber)
            }
        }
    }
}
struct KeyNumberD: View {
    @State var setNumber = 0.0
    @Binding var keyNumber:Double
    @Binding var keyNumberSting:String
    @State var color:Color = .red
    var body: some View {
        ZStack {
            Rectangle()
                .foregroundColor(color)
            Text("高度")
                //.fontWeight(.bold)
                //.frame(width: 100, height: 100, alignment: .center)
                //.background(color)
                .font(.system(size: 36, weight: .bold, design: .rounded))
                .foregroundColor(.white)
                .onTapGesture {
                    keyNumber = setNumber
                    keyNumberSting = String(keyNumber)
            }
        }
    }
}
