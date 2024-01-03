//
//  AppDelegate.swift
//  PoC
//
//  Created by Matias Flores on 15/01/2023.
//
import SwiftUI
import Foundation


class AppDelegate: NSObject, UIApplicationDelegate {
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
        
        let currentLocale = Locale.current
        let countryCode = currentLocale.language.region?.identifier
        
        if countryCode == "US" {
            Bundle.setLanguage("en")
        } else if countryCode == "ES" {
            Bundle.setLanguage("es")
        }

        
        
        return true
    }
    
    
}
