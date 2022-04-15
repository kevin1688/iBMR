//
//  NewView.swift
//  iBMR
//
//  Created by 暨大附中 on 2022/2/13.
//

import SwiftUI

struct NewView: View {
    var body: some View {
        ZStack{
            Rectangle()
                .ignoresSafeArea()
                .foregroundColor(Color("Main Color"))
         
            ZStack{
                Rectangle()
                    .frame(width:300, height: 80, alignment: .center)
                    .foregroundColor(.gray)
                    .cornerRadius(50)
                Text("IBMR")
                .font(.title)
            }
            
        }
    }
}

struct NewView_Previews: PreviewProvider {
    static var previews: some View {
        NewView()
    }
}
