//
//  Restaurant.swift
//  classic10
//
//  Created by 暨大附中 on 2021/12/28.
//

import SwiftUI

struct Restaurant: View {
    @ObservedObject var Menues = Foods()
    var body: some View {
        NavigationView {
            ZStack {
                    Rectangle()
                        .ignoresSafeArea()
                    .foregroundColor(Color("Main Color"))
                VStack {
                    ZStack{
                    Rectangle()
                    .modifier(MainRectangleTitleMod())
                    Text("餐廳推薦")
                    .modifier(MainTitleMod())
                    }
                    ScrollView{
                        ForEach(Menues.shops){ lp in
                                    NavigationLink {
                                        MDL_link(mshop:lp)
                                    } label: {
                                        shops(name:lp.title)
                                    }.modifier(textMod())
                                }
                    }
                }
                
            }
        }.edgesIgnoringSafeArea(.all)

    }
   /* @ViewBuilder func FoodName() -> some View{
        VStack{
            ForEach(Menues.ShoppName){ vn in
                VStack{
                    Text("\(vn.name)")
                    Image("\(vn.img)")
                }
                
            }
        }
    }*/
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

struct MainRectangleTitleMod:ViewModifier{
    
    @State var color:Color = Color.black
    
    func body(content: Content) -> some View{
        content
            .frame(width:.infinity , height: 60, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
            .foregroundColor(Color("Gray"))
    }
}

struct MainTitleMod:ViewModifier{
    
    @State var color:Color = Color.black
    
    func body(content: Content) -> some View{
        content
            .foregroundColor(.black)
            .font(.largeTitle)
    }
}
