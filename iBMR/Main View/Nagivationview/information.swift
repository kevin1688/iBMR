//
//  information.swift
//  classic10
//
//  Created by 暨大附中 on 2022/1/21.
//

import SwiftUI

struct information: View {
    @StateObject var Mydate = Foods()
    @State var name = ""
    var body: some View {
        ScrollView{
            ForEach(Mydate.shops){ rt in
                NavigationLink {
                    Evaluation(title:rt.title,img : rt.img)
                } label: {
                    Text("\(rt.title)")
                }
            }
        }
    }
}
struct information_Previews: PreviewProvider {
    static var previews: some View {
        information()
    }
}
