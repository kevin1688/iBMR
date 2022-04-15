//
//  ButtonView2.swift
//  classic10
//  Created by 暨大附中 on 2022/1/2.
//

import SwiftUI

struct BMRTabView: View {
    enum selectionName {
        case PeopleMainView
        case Restaurant
        case KnowledgeView
    }
    @State var selectionid = selectionName.Restaurant
    var body: some View {
        TabView(selection:$selectionid){
            PeopleMainView()
                .tabItem{Image(systemName:"person")}
                .tag(selectionName.PeopleMainView)
            Restaurant()
                .tabItem{Image(systemName:"star")}
                .tag(selectionName.Restaurant)
            
            KnowledgeView()
                .tabItem{Image(systemName:"books.vertical.fill")}
                .tag(selectionName.KnowledgeView)
        }
        .edgesIgnoringSafeArea(.all)
        .onAppear{
            selectionid = .Restaurant
        }
    }
}
struct BMRTabView_Previews: PreviewProvider {
    static var previews: some View {
        BMRTabView()
    }
}
