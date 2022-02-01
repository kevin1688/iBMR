//
//  Sex.swift
//  iBMR
//
//  Created by 暨大附中 on 2022/1/31.
//

import SwiftUI

struct Sex: View {
    var body: some View {
        ZStack{
            Rectangle()
                .ignoresSafeArea()
                .foregroundColor(Color("Main Color"))
            HStack{
                NavigationLink {
                    BMR_Boy_View()
                } label: {
                    ZStack{
                        Rectangle()
                            .frame(width:200, height: 200, alignment: .center)
                            .foregroundColor(.blue)
                            .cornerRadius(32)
                    Text("男生")
                            .font(.title)
                            .foregroundColor(.black)
                }
                }
                    NavigationLink {
                        BMR_Girl_View()
                    } label: {
                        ZStack {
                            Rectangle()
                                .frame(width:200, height: 200, alignment: .center)
                                .foregroundColor(.blue)
                                .cornerRadius(32)
                        Text("女生")
                                .font(.title)
                                .foregroundColor(.black)
                        }
                    }
            }
        }
    }
}

struct Sex_Previews: PreviewProvider {
    static var previews: some View {
        Sex()
    }
}
