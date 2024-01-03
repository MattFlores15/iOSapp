import SwiftUI
import UIKit
import CoreMotion



struct DiscoverView: View {
    
    @State private var isShaken = false
    let motion = CMMotionManager()
    @StateObject var oo = SearchObservableObject()
    var guide: GuideDataObject
    
    
    
    //    func shuffleContent() {
    //        oo.data.shuffle()
    //    }
    
    
    var body: some View {
        
        
        
        NavigationView{
            ScrollViewReader { proxy in
                
                ScrollView{
                    
                    VStack(){
                        
                        Spacer()
                        
                        HStack(){
                            
                            Spacer()
                            Image("guide-logo").resizable(capInsets: EdgeInsets()).frame(width: 40.0, height: 50.0).position(x: 19.0, y: 25.0)
                            Text("GuideMania")
                                .fontWeight(.bold)
                                .foregroundColor(Color("ToolB"))
                                .multilineTextAlignment(.leading)
                                .dynamicTypeSize(/*@START_MENU_TOKEN@*/.xLarge/*@END_MENU_TOKEN@*/)
                                .position(x:15.0, y:25.0)
                            
                            
                            Spacer()
                                .frame(width: 250.0)
                        }//End of First HStack
                        
                        Spacer()
                    }
                    .frame(height: 75.0)//End of first VStack
                    
                    HStack{
                        Text("Recommended")
                            .fontWeight(.bold)
                            .foregroundColor(Color.white)
                            .multilineTextAlignment(.leading)
                            .padding(15.0)
                            .dynamicTypeSize(/*@START_MENU_TOKEN@*/.xxxLarge/*@END_MENU_TOKEN@*/)
                        
                        Spacer()
                        
                    }
                    
                    //Main Content Container, programatically generated
                    
                    LazyVStack(spacing: 50.0){
                        
                        
                        ForEach(oo.data.shuffled()){
                            guide in
                            GuideCard(guide: guide)
                        }.onAppear {
                            self.startMonitoringAcceleration()
                        }
                        
                        Spacer()
                        
                    }.onChange(of: isShaken) { _ in
                        self.randomizeItems()
                    }
                }
                Spacer()
                    .frame(height: 50.0)
            }
            
            
        }.navigationTitle("Discover").navigationBarTitleDisplayMode(.inline).toolbarColorScheme(.dark, for: .navigationBar)
        
            .toolbarBackground(
                Color("Menu"),
                for: .navigationBar)
            .toolbarBackground(.visible, for: .navigationBar).frame(maxWidth: .infinity, maxHeight: .infinity).scrollIndicators(.hidden).navigationBarTitleDisplayMode(.inline).backgroundPreferenceValue(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=Preference Key@*/PreferredColorSchemeKey.self/*@END_MENU_TOKEN@*/) { value in
                Color("AccentColor")
            }.scrollIndicators(.hidden)
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


struct DiscoverView_Previews: PreviewProvider {
    static var previews: some View {
        DiscoverView( guide: GuideDataObject.mock())
    }
}

