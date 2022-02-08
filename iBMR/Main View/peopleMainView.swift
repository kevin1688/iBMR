//
//  FoodMainView.swift
//  classic10
//
//  Created by 暨大附中 on 2021/12/28.
//

import SwiftUI

struct FoodMainView: View {
    
    @EnvironmentObject var viewModel: AuthenticationViewModel
    
    var body: some View {
        NavigationView{
            ZStack{
                Rectangle()
                    .ignoresSafeArea()
                    .foregroundColor(Color("Main Color"))
                
                VStack{
                    Image("7")
                        .resizable()
                        .frame(width:.infinity
                               , height:200, alignment: .top)
                    Rectangle()
                        .frame(width:.infinity, height:1, alignment: .top)
                    Spacer()
                    NavigationLink {
                        switch viewModel.state{
                            case .signedIn : ChangeView()
                            case .signedOut : BMRSignView()
                        }
                    } label: {
                        ZStack{
                            Rectangle()
                                .modifier(PpMod())
                            Text("個人資料")
                                .modifier(ReMod())
                        }
                    }
                    Spacer()
                    NavigationLink {
                        Sex()
                    } label: {
                        ZStack{
                            Rectangle()
                                .modifier(PpMod())
                            Text("BMR計算")
                                .modifier(ReMod())
                        }
                    }
                    Spacer()
                    NavigationLink {
                        TDEE_View()
                    } label: {
                        ZStack{
                            Rectangle()
                                .modifier(PpMod())
                            Text("每日攝取熱量計算")
                                .modifier(ReMod())
                        }
                    }
                    Spacer()
                }
            }
        }.edgesIgnoringSafeArea(.all)
    }
}

struct FoodMainView_Previews: PreviewProvider {
    static var previews: some View {
        FoodMainView()
    }
}


struct FoodMainView2: View {
    var body: some View {
        
        ZStack{
            Rectangle()
                .ignoresSafeArea()
                .foregroundColor(Color("Main Color"))
            VStack{
                Rectangle()
                    .frame(width:.infinity, height: 200)
                    .foregroundColor(.white)
                Rectangle()
                    .frame(width:.infinity, height:1)
                Spacer()
                ZStack{
                    Rectangle()
                        .frame(width:250, height: 80)
                        .foregroundColor(.gray)
                        .cornerRadius(36)
                    Text("個人資料")
                        .modifier(ReMod())
                }
                Spacer()
                ZStack{
                    Rectangle()
                        .frame(width:250, height: 80)
                        .foregroundColor(.gray)
                        .cornerRadius(36)
                    Text("BMI計算")
                        .modifier(ReMod())
                }
                
                Spacer()
                ZStack{
                    Rectangle()
                        .frame(width:250, height: 80)
                        .foregroundColor(.gray)
                        .cornerRadius(36)
                    Text("每日攝取量計算")
                        .modifier(ReMod())
                }
                Spacer()
                
                
                
            }
        }
        
    }
}


struct PpMod:ViewModifier{
    
    @State var color:Color = Color("Gray")
    
    func body(content: Content) -> some View{
        content
            .frame(width:280, height: 80)
            .foregroundColor(color)
    }
}

