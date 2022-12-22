//
//  MethodApp.swift
//  Runner
//
//  Created by Thipok Cholsaipant on 8/15/22.
//

import SwiftUI

// AppDelegate is now @main
struct MethodApp: App {
    @UIApplicationDelegateAdaptor(AppDelegate.self) var appDelegate
    
    var body: some Scene {
        WindowGroup {
            FlutterView()
                .ignoresSafeArea()
                .environmentObject(self.appDelegate)
        }
    }
}
