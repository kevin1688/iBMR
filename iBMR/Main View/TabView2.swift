//
//  ButtonView2.swift
//  classic10
//  Created by 暨大附中 on 2022/1/2.
//

import SwiftUI

struct ButtonView2: View {
    enum selectionName {
    case MainView
    case Restaurant
    case MainView2
    }
    @State var selectionid = selectionName.Restaurant
    
    var body: some View {
        TabView(selection:$selectionid){
           FoodMainView()
                .tabItem{Image(systemName:"person")}
                .tag(selectionName.MainView)
           Restaurant()
                .tabItem{Image(systemName:"star")}
                .tag(selectionName.Restaurant)

           MainView2()
                .tabItem{Image(systemName:"books.vertical.fill")}
                .tag(selectionName.MainView2)

        }
        .edgesIgnoringSafeArea(.all)
        .onAppear{
            selectionid = .Restaurant
        }
}
}
struct ButtonView2_Previews: PreviewProvider {
    static var previews: some View {
        ButtonView2()
    }
}
