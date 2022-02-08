//
//  allJudge.swift
//  project
//
//  Created by 暨大附中２ on 2022/1/1.
//

import SwiftUI

struct allJudge: View {
    
    @State var DataJG = [
        DTJG(JG: JG(title: "麥當勞"), tempStars: 5.0),
        DTJG(JG: JG(title: "阿寶"), tempStars: 4.5)
    ]
    var body: some View {
        ZStack {
            Rectangle()
                .foregroundColor(Color("Green"))
            VStack {
                Text("評價總和")
                    .scaleEffect(2)
                    .frame(width: 350, height: 60, alignment: .center)
                    .foregroundColor(.black)
                    .background(Color("Gray"))
                    .cornerRadius(18)
                    .padding(.vertical,20)
                ScrollView {
                    ForEach(DataJG) { allJG in
                        HStack {               Text("\(allJG.JG.title)")
                                .scaleEffect(2.5)
                                .foregroundColor(.black)
                                .frame(width: 180,height: 50)
                            .padding()
                            .background(Color("DarkGreen"))
                            .cornerRadius(18)
                            
                        Text("\(allJG.tempStars)")
                                .scaleEffect(2.5)
                                .foregroundColor(.white)
                                .frame(width: 200, height: 80, alignment: .center)
                                .background(Color("CentorGreen"))
                                .cornerRadius(16)
                        }
                        }
                    }
                }
            }
    }
}

struct allJudge_Previews: PreviewProvider {
    static var previews: some View {
        allJudge()
    }
}
