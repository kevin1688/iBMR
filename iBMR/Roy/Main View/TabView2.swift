//
//  ButtonView2.swift
//  classic10
//
//  Created by 暨大附中 on 2022/1/2.
//

import SwiftUI

struct ButtonView2: View {
    var body: some View {
        TabView{
           FoodMainView()
                .tabItem{Image(systemName:"person")}
           Restaurant()
                .tabItem{Image(systemName:"star")}
           MainView2()
                .tabItem{Image(systemName:"books.vertical.fill")}
        }
        .edgesIgnoringSafeArea(.all)
}
}
struct ButtonView2_Previews: PreviewProvider {
    static var previews: some View {
        ButtonView2()
    }
}
