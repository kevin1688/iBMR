//
//  Main.swift
//  project
//
//  Created by 暨大附中２ on 2021/12/28.
//

import SwiftUI

struct UnderstandView: View {
    var body: some View {
        NavigationView{
        ZStack{
            Rectangle()
                .ignoresSafeArea()
                .foregroundColor(Color("Main Color"))
            VStack{
                ZStack{
                Rectangle()
                    .frame(width: 430, height: 60, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    .foregroundColor(Color("Gray"))
                
                Text("知識科普")
                    .foregroundColor(.black)
                    .font(.largeTitle)
                }
                Spacer()
                NavigationLink {
                    BMIView()
                } label: {
                    ZStack{
                    Rectangle()
                        .frame(width: 350, height: 55)
                        .foregroundColor(Color("Gray"))
                        HStack{
                    Text("了解BMI")
                            .font(.title)
                            .foregroundColor(.white)
                            Image(systemName: "play")
                                .foregroundColor(.white)
                }

                }
            }
                Spacer()
                NavigationLink {
                    CaloriesView()
                } label: {
                    ZStack{
                    Rectangle()
                        .frame(width: 350, height: 55)
                        .foregroundColor(Color("Gray"))
                        HStack{
                        Text("了解熱量")
                                .font(.title)
                                .foregroundColor(.white)
                            Image(systemName: "play")
                                .foregroundColor(.white)
                        }
                    }
            }
                Spacer()
               
                NavigationLink {
                    Lose_Weight_View()
                } label: {
                    ZStack{
                    Rectangle()
                        .frame(width: 350, height: 55)
                        .foregroundColor(Color("Gray"))
                        HStack{
                        Text("網路上的減肥方式")
                                .font(.title)
                                .foregroundColor(.white)
                            Image(systemName: "play")
                                .foregroundColor(.white)
                        }
                    }

            }
                Spacer()
               }
    }
    }.edgesIgnoringSafeArea(.all)
}
}
struct UnderstandView_Previews: PreviewProvider {
    static var previews: some View {
        UnderstandView()
    }
}


