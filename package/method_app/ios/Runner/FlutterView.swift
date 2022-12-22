//
//  FlutterView.swift
//  Runner
//
//  Created by Thipok Cholsaipant on 8/15/22.
//

import SwiftUI
import Flutter

struct FlutterView: UIViewControllerRepresentable {
    
    typealias UIViewControllerType = FlutterViewController
    
    @EnvironmentObject var appDelegate: AppDelegate
    
    func makeUIViewController(context: Context) -> FlutterViewController {
        let flutterEngine = appDelegate.flutterEngine
        return FlutterViewController(engine: flutterEngine, nibName: nil, bundle: nil)
    }
    
    func updateUIViewController(_ uiViewController: FlutterViewController, context: Context) { }
}

