import SwiftUI
import UIKit

struct GuideView: View {
    
    @StateObject var pp = SearchObservableObject()
    var guide: GuideDataObject
    
    var body: some View {
        
        
        
        NavigationView{
            
            ScrollViewReader{ proxy in
                ScrollView(.vertical){
                    
                    ForEach (pp.data){
                        guide in
                        GuidePage(guide: guide)
                        
                    }
                    
                }
            }
            .navigationTitle(guide.name).frame(maxWidth: .infinity, maxHeight: .infinity)
            .navigationBarTitleDisplayMode(.inline).scrollIndicators(.hidden).toolbarColorScheme(.dark, for: .navigationBar)
            
            .toolbarBackground(
                Color("Menu"),
                for: .navigationBar)
            .toolbarBackground(.visible, for: .navigationBar).frame(maxWidth: .infinity, maxHeight: .infinity).scrollIndicators(.hidden).navigationBarTitleDisplayMode(.inline).backgroundPreferenceValue(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=Preference Key@*/PreferredColorSchemeKey.self/*@END_MENU_TOKEN@*/) { value in
                Color("AccentColor")
            }.scrollIndicators(.hidden).backgroundPreferenceValue(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=Preference Key@*/PreferredColorSchemeKey.self/*@END_MENU_TOKEN@*/) { value in
            Color.accentColor
        }
        }
        
    }
}

struct GuideView_Previews: PreviewProvider {
    static var previews: some View {
        GuideView(guide: GuideDataObject.mock())
    }
}
