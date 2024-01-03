//
//  PoCApp.swift
//  PoC
//
//  Created by Matias Flores on 23/10/2022.
//

import SwiftUI

@main
struct PoCApp: App {

    @UIApplicationDelegateAdaptor(AppDelegate.self) var appDelegate
    
    var body: some Scene {

        
        WindowGroup {
            InitialPageView()
        }

        
        
    }
    
    
    
}
