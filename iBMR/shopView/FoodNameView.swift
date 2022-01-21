//
//  NameView.swift
//  classic10
//
//  Created by 暨大附中 on 2021/12/17.
//

import SwiftUI

struct NameView: View {
    
    let shop = FoodList()
    @State var name = ""
    @State var number = 0
    @ObservedObject var Menu = menu(value:"阿寶")
    @ObservedObject var Menues = FoodList()


    var body: some View {
        NavigationView{
            ZStack{
                Rectangle()
                    .foregroundColor(Color("Main Color"))                    .ignoresSafeArea()
                VStack{
                    ZStack{
                        Rectangle()
                            .frame(width:.infinity, height:80)
                            .foregroundColor(.gray)
                        Text("餐廳推薦")
                            .modifier(foodtitle())
                            .padding()
                        
                    }.padding(.top,-70)
                    ZStack{
                        Rectangle()
                            .frame(width:350, height: 50)
                            .foregroundColor(.yellow)
                            .cornerRadius(40)
                        Text("\(name)")
                            .modifier(foodtitle())
                    }
                    ScrollView{
                        ForEach(Menues.FoodName){item in
                            NavigationLink {
                                VStack{
                                    Text("\(item.numbers)人喜歡")
                                    Image(item.img)
                                        .resizable()
                                        .frame(width:300, height: 400)
                                }
                            } label: {
                                HStack{
                                    foods(name: item.name , prise: item.prise)
                                    Image(systemName:"heart.fill")
                                        .foregroundColor(.red)
                                        .frame(width:100)
                                        .onTapGesture {
                                            Menues.addNumber()
                                        }
                                }.modifier(textMod())
                            }
                        }
                    }
                }
            }
        }
    }
    
}

struct NameView_Previews: PreviewProvider {
    static var previews: some View {
        NameView()
    }
}
struct foods : View{
    @State var name : String
    @State var prise : String
    var body: some View{
        VStack{
            
        HStack{
        Text("\(name)")
            Text("\(prise)元")
        
        }
            Rectangle()
                    .frame(width:.infinity, height: 1)
        }
    }
}

