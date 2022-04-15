//
//  Main.swift
//  project
//
//  Created by 暨大附中２ on 2021/12/28.
//

import SwiftUI

struct KnowledgeView: View {
    var body: some View {
        NavigationView{
        ZStack{
            Rectangle()
                .ignoresSafeArea()
                .foregroundColor(Color("Main Color"))
            VStack(spacing: 60){
                ZStack{
                    Rectangle()
                        .frame(width: 430, height: 60, alignment: .center)
                        .foregroundColor(Color("Gray"))
                    Text("知識科普")
                        .foregroundColor(.black)
                        .font(.largeTitle)
                }
               
                NavigationLink {
                    BMIView()
                } label: {
                    ZStack{
                        Rectangle()
                            .frame(width: 350, height: 65)
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
                
                NavigationLink {
                    knowledgaBMR()
                } label: {
                    ZStack{
                        Rectangle()
                            .frame(width: 350, height: 65)
                            .foregroundColor(Color("Gray"))
                        HStack{
                            Text("了解BMR")
                                .font(.title)
                                .foregroundColor(.white)
                            Image(systemName: "play")
                                .foregroundColor(.white)
                        }
                    }
                }
             
                NavigationLink {
                    KnowledgaTDEE()
                } label: {
                    ZStack{
                        Rectangle()
                            .frame(width: 350, height: 65)
                            .foregroundColor(Color("Gray"))
                        HStack{
                            Text("了解TDEE")
                                .font(.title)
                                .foregroundColor(.white)
                            Image(systemName: "play")
                                .foregroundColor(.white)
                        }
                    }
                }
               
              
                NavigationLink {
                    CaloriesView()
                } label: {
                    ZStack{
                    Rectangle()
                        .frame(width: 350, height: 65)
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
               
                NavigationLink {
                    Lose_Weight_View()
                } label: {
                    ZStack{
                    Rectangle()
                        .frame(width: 350, height: 65)
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
            
               }
        }
    }.edgesIgnoringSafeArea(.all)
}
}
struct knowledgeView_Previews: PreviewProvider {
    static var previews: some View {
        KnowledgeView()
    }
}


