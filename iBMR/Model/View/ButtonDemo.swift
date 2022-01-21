//
//  ButtonDemo.swift
//  classic10
//
//  Created by kai wen chen on 2021/11/9.
//

import SwiftUI

struct ButtonDemo: View {
    @State var switchColor = false
    @State var changeview = Color.black
    @State var isShow  = false
    var body: some View {
       HStack(){
            Image(systemName:"questionmark.circle.fill")
                .resizable()
                .foregroundColor(.green)
                .frame(width:80, height: 80, alignment: .center)
                .onTapGesture {
                  
                    isShow.toggle()
                }
            Button{
                
                isShow.toggle()
                
            }label:{
                Image(systemName:"questionmark.circle.fill")
                    .resizable()
                    .foregroundColor(changeview)
                    .frame(width:80, height: 80, alignment: .center)
            }
           
       }
    }
}
        

        
       /* ButtonView()
    }
}*/
struct ButtonDemo_Previews: PreviewProvider {
    static var previews: some View {
        ButtonDemo()
    }
}
        
struct secondView: View {
    
    @Binding var switchColor:Bool
    
    var body: some View {
        Rectangle()
            .offset(y:switchColor ? 0 : 1500)
            .onTapGesture {
                switchColor.toggle()
            }
            .animation(.easeInOut)
    }
}

struct ButtonView: View {
    @State var switchColor = false
    var body: some View {
        ZStack{
            Button {
                switchColor.toggle()
            } label: {
                ZStack{
                    Circle()
                        .frame(width: 70, height: 70, alignment: .center)
                    Text("註冊登入")
                        .foregroundColor(.black)
                }
            }
            .foregroundColor(Color("CentirGreen"))
            .offset( y: 400)
            
            //SwitchButton(switchColor:$switchColor)
            
            //secondView(switchColor: $switchColor)
            
            SignView2()
                .offset(x:switchColor ? 0 :500)
                .animation(.default)
        }
    }
}
