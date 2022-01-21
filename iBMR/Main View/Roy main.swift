//
//  Roy main.swift
//  classic10
//
//  Created by 暨大附中 on 2021/11/26.
//

import SwiftUI

struct Roy_main: View {
    @StateObject var myData = Num()
    @StateObject var age = Num()
    var body: some View {
       NavigationView{
            VStack {
                NavigationLink {
                    other()
                } label: {
                    Text("下一個View")
                }
                .padding(.bottom,300)
                
                Button {
                    myData.number += 1
                } label: {
                    Text("人氣熱度＋1")
                }

            }
            
        }.environmentObject(myData) //傳遞資料時添加對象物件即可
        /*HStack{
        Text("人氣熱度")
        Text("\(age.number)")
        
        Button(action: {
            age.number = age.number + 1
        }, label: {
             Text("ok")
        })
        }
    }
    
}*/
        
    }
}
struct Roy_main_Previews: PreviewProvider {
    static var previews: some View {
        Roy_main()
    }
}
struct other : View {
    @EnvironmentObject var myData : Num
    var body: some View{
        Text("\(myData.number)")
        Text("人氣熱度")
    }
}
struct NewView: View {
    @StateObject var age = Num()
    
    var body: some View{
        Text("NewView")
        Text("Age:\(age.number)")
        
        Button(action: {
            age.number = age.number + 1
        }, label: {
            Text("age + 1")
        })
    }
    
}

