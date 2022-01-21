//
//  mainView.swift
//  project
//
//  Created by 暨大附中２ on 2022/1/2.
//

import SwiftUI

struct mainView: View {
    
    @State var onOff = false
    
    var body: some View {
        TabView{
            judge()
            discount()
            Main()
    }
}
}

struct mainView_Previews: PreviewProvider {
    static var previews: some View {
        mainView()
    }
}


