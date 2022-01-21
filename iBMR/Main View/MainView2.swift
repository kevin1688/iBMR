//
//  Main.swift
//  project
//
//  Created by 暨大附中２ on 2021/12/28.
//

import SwiftUI

struct MainView2: View {
    var body: some View {
        ZStack{
            Rectangle()
                .frame(width: 420, height: 900)
                .foregroundColor(Color("Main Color"))
            Rectangle()
                .frame(width: 430, height: 60, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                .foregroundColor(Color("Gray"))
                .padding(.bottom,650)
            Text("知識科普")
                .foregroundColor(.black)
                .font(.largeTitle)
                .padding(.bottom,650)
            VStack{
            Button(action: {
            }) {
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
            }.padding()
                
                Button(action: {
                }) {
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
                .padding()
                Button(action: {
                }) {
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
                .padding()
                Button(action: {
                }) {
                    ZStack{
                    Rectangle()
                        .frame(width: 350, height: 55)
                        .foregroundColor(Color("Gray"))
                        HStack{
                        Text("調查結果")
                                .font(.title)
                                .foregroundColor(.white)
                            Image(systemName: "play")
                                .foregroundColor(.white)
                        }
                    }
            }
                .padding()
                Button(action: {
                }) {
                    ZStack{
                    Rectangle()
                        .frame(width: 350, height: 55)
                        .foregroundColor(Color("Gray"))
                        HStack{
                        Text("比例")
                                .font(.title)
                                .foregroundColor(.white)
                            Image(systemName: "play")
                                .foregroundColor(.white)
                        }
                }
            }
                .padding()
            }
    }
    }
}

struct MainView2_Previews: PreviewProvider {
    static var previews: some View {
        MainView2()
    }
}
