//
//  模組.swift
//  File Made
//
//  Created by 暨大附中10 on 2021/12/2.
//

import SwiftUI

struct View_Background :ViewModifier{
    
    func body(content:Content) -> some View{
        
        content
            .ignoresSafeArea()
            .foregroundColor(Color("mainColor"))
        
    }
}

struct Rectangle_Tittle:ViewModifier{
    
    func body(content:Content) -> some View{
        
        content
            .frame(width: 500, height: 60)
            .foregroundColor(Color("Gray"))
    }
}

struct Text_Tittle:ViewModifier{
    
    func body(content:Content) -> some View{
        
        content
            .scaleEffect(2)
            .frame(width: 500, height: 60)
    }
}

struct Small_Tittle:ViewModifier{
    
    func body(content:Content) -> some View{
        
        content
            .scaleEffect(1.4)
            .frame(width: 120, height: 50)
    }
}
struct TextField_Mod:ViewModifier{
    
    func body(content:Content) -> some View{
        
        content
            .frame(width: 115, height: 50)
            .background(Color(.white))
        
    }
}



