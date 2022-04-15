//
//  FoodMainView.swift
//  classic10
//
//  Created by 暨大附中 on 2021/12/28.
//

import SwiftUI

struct PeopleMainView: View {
    var body: some View {
        NavigationView{
            ZStack{
                Rectangle()
                    .ignoresSafeArea()
                    .foregroundColor(Color("Main Color"))
                VStack(spacing:40){
                    Image("7")
                        .resizable()
                        .frame(width:.infinity
                               , height:200, alignment: .top)
                    Rectangle()
                        .frame(width:.infinity, height:1, alignment: .top)
                    NavigationLink {
                        updateView()
                    } label: {
                    Rectangle()
                            .frame(width: 150, height:50, alignment: .leading)
                            .cornerRadius(18)
                            .foregroundColor(Color("Gray"))
                    }
                    NavigationLink {
                        ChangeView()
                    } label: {
                        ZStack{
                            Rectangle()
                                .modifier(PpMod())
                            Text("個人資料")
                                .modifier(ReMod())
                        }
                    }
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
                  
                }.padding(.bottom,40)
            }
        }.edgesIgnoringSafeArea(.all)
    }
}
struct PeopleMainView_Previews: PreviewProvider {
    static var previews: some View {
        PeopleMainView()
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
