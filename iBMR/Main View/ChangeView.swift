//
//  ChangeView.swift
//  classic10
//
//  Created by 暨大附中 on 2021/12/28.
//

import SwiftUI

struct ChangeView: View {
    @State var users = ""
    @State var phonenumber = ""
    @State var email = ""
    var body: some View {
        ZStack{
            Rectangle()
                .ignoresSafeArea()
                .foregroundColor(Color("Main Color"))
            VStack{
                Text("個人資料")
                    .modifier(textMod())
                Image("8")
                    .resizable()
                    .frame(width: 300, height: 300)
                    .cornerRadius(150)
                Text("大頭貼照")
                    .font(.title)
                    .padding()
                HStack{
                    Text("       用戶名")
                        .font(.title)
                    ZStack {
                        Rectangle()
                            .modifier(SignMod())
                        
                        TextField("輸入用戶名", text: $users)
                    }
                }
                HStack{
                    Text(" 電話號碼")
                        .font(.title)
                    ZStack {
                        Rectangle()
                            .modifier(SignMod())
                        TextField("輸入電話號碼", text: $phonenumber)
                    }
                }
                HStack{
                    Text("Email信箱")
                        .font(.title)
                    ZStack {
                        Rectangle()
                            .modifier(SignMod())
                        
                        TextField("輸入信箱", text: $email)
                    }
                }
            }
        }
    }
}

struct ChangeView_Previews: PreviewProvider {
    static var previews: some View {
        ChangeView()
    }
}

struct ReMod:ViewModifier{
    
    @State var color:Color = Color.black
    
    func body(content: Content) -> some View{
        content
            .font(.system(size:30))
            .font(.title3.bold())
            .foregroundColor(color)
    }
}
