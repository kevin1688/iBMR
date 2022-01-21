//
//  ContentView.swift
//  project
//
//  Created by 暨大附中２ on 2021/12/3.
//

import SwiftUI

struct ContentView2: View {
    
    @State var onOff = false
    
    var body: some View {
        TabView{
            judge()
            discount()
    }
        .tabViewStyle(PageTabViewStyle())
        
}
}

struct ContentView2_Previews: PreviewProvider {
    static var previews: some View {
        ContentView2()
    }
}

