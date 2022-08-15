//
//  MethodApp.swift
//  Runner
//
//  Created by Thipok Cholsaipant on 8/15/22.
//

import SwiftUI

@main
struct MethodApp: App {
    @UIApplicationDelegateAdaptor(AppDelegate.self) var appDelegate
    
    var body: some Scene {
        WindowGroup {
            ZStack {
                FlutterView()
                    .ignoresSafeArea()
                    .environmentObject(self.appDelegate)
                Button("Crash") {
                    fatalError("Crash was triggered")
                }
            }
        }
    }
}
