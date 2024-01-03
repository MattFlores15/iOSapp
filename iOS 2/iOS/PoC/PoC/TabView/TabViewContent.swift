//
//  TabViewContent.swift
//  PoC
//
//  Created by Matias Flores on 29/10/2022.
//

import SwiftUI
import CoreLocation
import CoreMotion


struct TabViewContent: View {
    
    @Environment(\.locale) var locale: Locale
    @State private var isShaken = false
    let motion = CMMotionManager()
    @StateObject var oo = SearchObservableObject()
    var guide: GuideDataObject
    
    var body: some View {
        
       
       
        TabView{
            
            Group{
                HomeView( guide: GuideDataObject.mock()).tabItem{
                    Label("Home", systemImage: "house")
                }.accentColor(/*@START_MENU_TOKEN@*/Color("AccentColor")/*@END_MENU_TOKEN@*/)
                DiscoverView(guide: GuideDataObject.mock()).tabItem{
                    Label("Discover", systemImage: "safari")
                }.accentColor(/*@START_MENU_TOKEN@*/Color("AccentColor")/*@END_MENU_TOKEN@*/).onChange(of: isShaken) { _ in
                    self.randomizeItems()
                }
                SearchView().tabItem{
                    Label("Search", systemImage: "magnifyingglass")
                }.accentColor(/*@START_MENU_TOKEN@*/Color("AccentColor")/*@END_MENU_TOKEN@*/)
                SearchView().badge("!").tabItem{
                    Label("Profile", systemImage: "person.crop.square.fill")
                }.accentColor(/*@START_MENU_TOKEN@*/Color("AccentColor")/*@END_MENU_TOKEN@*/)
            }.toolbar(.visible, for: .tabBar)
            
                .toolbarBackground(Color("Menu"), for: .tabBar)
    
        }.navigationBarBackButtonHidden(true).navigationViewStyle(.columns).accentColor(Color("ToolB")).onAppear {
            Bundle.setLanguage("es")
        }
    }
     
    func startMonitoringAcceleration() {
        motion.accelerometerUpdateInterval = 0.1
        motion.startAccelerometerUpdates(to: .main) { (data, error) in
            if let data = data {
                let acceleration = data.acceleration
                if abs(acceleration.x) > 1.5 || abs(acceleration.y) > 1.5 || abs(acceleration.z) > 1.5 {
                    self.isShaken = true
                    print("Shaken!!!!!!")
                }
            }
        }
    }
    
    func randomizeItems() {
        oo.data.shuffle()
        isShaken = false
    }
    
    
}


struct TabViewContent_Previews: PreviewProvider {
    static var previews: some View {
        TabViewContent(guide: GuideDataObject.mock())
    }
}
