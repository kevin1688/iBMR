//
//  SwiftUIView.swift
//  project
//
//  Created by 暨大附中２ on 2021/12/3.
//

import SwiftUI

import SwiftUI

struct Stars: View {
    
    @Binding var pointNumber:Int
    @Binding var tempNumber:Int
    
    var body: some View {
        HStack{
            ForEach(1..<6) { number in
                star(number: number, tempNumber: $tempNumber, pointNumber: $pointNumber)
                
            }
        }
    }
    
    
}

struct star:View {
    @State var number:Int = 0
    @Binding var tempNumber:Int
    @Binding var pointNumber:Int
    
    var body: some View {
        VStack {
            ZStack{
                Image(systemName: "star.leadinghalf.filled")
                    .resizable()
                    .frame(width: 60, height: 60, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    .foregroundColor(.yellow)
                    .opacity((tempNumber > 0) && (pointNumber == number) ? 1.0 : 0.0)
                Image(systemName:(tempNumber == 0) && (number <= pointNumber) ? "star.fill": "star")
                    .resizable()
                    .frame(width: 60, height: 60, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    .foregroundColor(.yellow)
                Image(systemName: (tempNumber > number) && (pointNumber != number) ? "star.fill": "star")
                    .resizable()
                    .frame(width: 60, height: 60, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    .foregroundColor(.yellow)
                    
            }
            .onTapGesture {
                pointNumber = number
                if tempNumber == 0 {
                    tempNumber = number + 1
                    //pointNumber += 1
                }else{
                    tempNumber = 0
                }
        }
        }
        
    }
}

struct Stars_Previews: PreviewProvider {
    static var previews: some View {
        Stars(pointNumber: .constant(0), tempNumber: .constant(0))
    }
}
