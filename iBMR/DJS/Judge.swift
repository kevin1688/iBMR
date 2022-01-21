//
//  Judge.swift
//  project
//
//  Created by kai wen chen on 2021/12/7.
//

import SwiftUI

struct judge: View {
    
    @State var onOff = false
    
    @State var stars = 0
    @State var title = "麥當勞"
    @State var img = "19"
    @State var tempStars = 0
    
    var body: some View {
        VStack {
            ZStack{
                Rectangle()
                    .frame(width: 420, height: 950, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    .foregroundColor(Color("Green"))
                Rectangle()
                    .frame(width: 400, height: 60, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    .foregroundColor(Color("Gray"))
                    .padding(.bottom,700)
                Text("餐廳評價")
                    .foregroundColor(.black)
                    .font(.largeTitle)
                    .padding(.bottom,700)
                Rectangle()
                    .frame(width: 280, height: 43, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    .foregroundColor(Color("DarkGreen"))
                    .cornerRadius(40)
                    .padding(.bottom,550)
                Text(title)
                    .foregroundColor(.black)
                    .font(.largeTitle)
                    .padding(.bottom,550)
                Image(img)
                    .resizable()
                    .frame(width: 400, height: 380, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    .padding(.bottom,30)
                Rectangle()
                    .frame(width: 400, height: 80, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    .foregroundColor(Color("CentorGreen"))
                    .padding(.top,550)
                Stars(pointNumber: $stars, tempNumber: $tempStars)
                .padding(.top,540)
                HStack{
                Image(systemName: "star")
                    .resizable()
                    .frame(width: 30, height: 30, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                Text("\(tempStars == 0 ? Float(stars) : Float(stars) + 0.5 - 1)")
                    .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                }
                .padding(.top,690)
            }
            
        }
        .tabItem{
            Image(systemName:"person")
                .resizable()
                .frame(width: 50, height: 50)
                .foregroundColor(Color("Gray"))
        }
    }
}


struct judge_Previews: PreviewProvider {
    static var previews: some View {
        judge()
    }
}
