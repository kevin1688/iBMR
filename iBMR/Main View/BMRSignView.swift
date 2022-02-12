//
//  SignView2.swift
//  classic10
//
//  Created by 暨大附中 on 2021/12/17.
//

import SwiftUI


struct BMRSignView: View {
    
    @EnvironmentObject var viewModel: AuthenticationViewModel

    @AppStorage("tapCount") private var tapCount = 0
    
    @State var email = ""
    
    @State var password = ""
    
    @State var showAlert = false
    
    var body: some View {
        
        ZStack {
            
           Rectangle()
                .ignoresSafeArea()
                .foregroundColor(Color("Main Color"))
            
            VStack{
                ZStack{
                    Rectangle()
                        .frame(width:.infinity, height:80)
                        .foregroundColor(Color("CentirGreen"))
                Text("BMR管理系統開發")
                    .modifier(textMod())
                }
                Image("MainLogo")
                    .resizable()
                    .frame(width:400, height:400)
        
                VStack {
                    HStack{
                        Text("帳號")
                            .font(.title)
                    ZStack{
                        Rectangle()
                            .modifier(SignMod())
                    TextField("輸入信箱", text: $email)
                    }
                    }
                    HStack{
                        Text("密碼")
                            .font(.title)
                    ZStack{
                        Rectangle()
                            .modifier(SignMod())
                    TextField("輸入密碼", text: $password)
                    }
                    }
               }
                    Button {
                        viewModel.authCreate(email: email, password: password){
                            self.showAlert = true
                        }
                    } label: {
                        Text("註冊帳號")
                }
                
                Button {
                    viewModel.authSignIn(email: email, password: password)
                } label: {
                    Text("登入帳號")
                }
                
                
                Button {
                    viewModel.signIn()
                } label: {
                    Text("Google 登入")
                }
                
            }
            
            ZStack {
                Rectangle()
                Text("輸入資訊有誤")
                    .foregroundColor(.white)
            }
            .frame(width: 200, height: 100, alignment: .center)
            .offset(y: showAlert ? 0 : -1000)
            .animation(.default)
        }
    }
}
struct BMRSignView_Previews: PreviewProvider {
    static var previews: some View {
        BMRSignView()
    }
}


struct SignMod:ViewModifier{
    
    @State var color:Color = Color("Gray")
    
    func body(content: Content) -> some View{
        content
            .frame(width:.infinity, height: 45)
            .foregroundColor(color)
    }
}
