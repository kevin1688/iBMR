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
            VStack(spacing: 30){
                NavigationLink {
                    BMR_Boy_View()
                } label: {
                    ZStack{
                        Rectangle()
                            .frame(width:370, height: 240, alignment: .center)
                            .foregroundColor(Color("DarkGreen"))
                            .cornerRadius(32)
                        Rectangle()
                            .frame(width:350, height: 220, alignment: .center)
                            .foregroundColor(.white)
                            .cornerRadius(28)
                        
                Text("男生")
                        .scaleEffect(2.5)
                        .font(.system(size: 24, weight: .black, design: .rounded))
                        .foregroundColor(Color("DarkGreen"))
                }
                }
                    NavigationLink {
                        BMR_Girl_View()
                    } label: {
                        ZStack {
                            Rectangle()
                                .frame(width:370, height: 240, alignment: .center)
                                .foregroundColor(Color("DarkGreen"))
                                .cornerRadius(32)
                            Rectangle()
                                .frame(width:350, height: 220, alignment: .center)
                                .foregroundColor(.white)
                                .cornerRadius(28)
                    Text("女生")
                            .scaleEffect(2.5)
                            .font(.system(size: 24, weight: .black, design: .rounded))
                            .foregroundColor(Color("DarkGreen"))
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
