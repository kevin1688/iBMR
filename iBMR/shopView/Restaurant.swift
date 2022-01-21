//
//  Restaurant.swift
//  classic10
//
//  Created by 暨大附中 on 2021/12/28.
//

import SwiftUI


struct Restaurant: View {
    @ObservedObject var Menues = ShoppList()
    var body: some View {
        NavigationView{
            ZStack {
                Rectangle()
                    .ignoresSafeArea()
                .foregroundColor(Color("Main Color"))
            ScrollView{
                ForEach(Menues.ShoppName){ lp in
                            NavigationLink {
                               ContentView2()
                            } label: {
                                shops(name:lp.name)
                            }.modifier(textMod())
                        }
                    }
                }
            }
    }
    @ViewBuilder func FoodName() -> some View{
        VStack{
            ForEach(Menues.ShoppName){ vn in
                VStack{
                    Text("\(vn.name)")
                    Image("\(vn.img)")
                }
                
            }
        }
    }
}

struct Restaurant_Previews: PreviewProvider {
    static var previews: some View {
        Restaurant()
    }
}

struct shops : View{
    @State var name : String
    var body: some View{
        VStack{
        Text("\(name)")
            Rectangle()
                .frame(width:.infinity, height:1, alignment:.center)

        }
    }
}

