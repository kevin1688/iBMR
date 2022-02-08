//
//  ContentView.swift
//  classic10
//
//  Created by kai wen chen on 2021/10/22.
//

import SwiftUI

struct ContentView: View {
    @EnvironmentObject var viewModel: AuthenticationViewModel
    
    var body: some View {
        switch viewModel.state{
            case .signedIn : BMRTabView()
            case .signedOut : BMRSignView()
        }
       //MainView()
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
