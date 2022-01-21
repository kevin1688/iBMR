//
//  iBMRApp.swift
//  iBMR
//
//  Created by kai wen chen on 2022/1/14.
//

import SwiftUI
import Firebase

@main
struct iBMRApp: App {
    @UIApplicationDelegateAdaptor(AppDelegate.self) var appDelegate
    @StateObject var viewModel =  AuthenticationViewModel()
    
    var body: some Scene {
        WindowGroup {
            ContentView().environmentObject(viewModel)
        }
    }
}
