//
//  ShopDemoView.swift
//  classic10
//
//  Created by 暨大附中 on 2022/1/7.
//

import SwiftUI

struct ShopDemoView: View {
    @StateObject var date = Foods()
    var body: some View {
        VStack{
            ForEach(date.shops){sp in
                VStack{
                    Text(sp.title)
                    Text(sp.address)
                    ForEach(sp.menu){mn in
                        VStack{
                            Text(mn.name)
                            Text(mn.cald)
                        Text("----------------------------")
                        }
                       
                    }
                }
                
            }
            
            
        }
    }
}

struct ShopDemoView_Previews: PreviewProvider {
    static var previews: some View {
        ShopDemoView()
    }
}
