//
//  NewView.swift
//  iBMR
//
//  Created by 暨大附中 on 2022/2/12.
//

import SwiftUI

struct NewView: View {
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
                        Sex()
                        }label: {
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

struct NewView_Previews: PreviewProvider {
    static var previews: some View {
        NewView()
    }
}
