//
//  GuidePage.swift
//  PoC
//
//  Created by Matias Flores on 01/11/2022.
//

import SwiftUI
import UIKit
struct GuidePage: View {
    
    @StateObject var pp = SearchObservableObject()
    var guide: GuideDataObject
    var body: some View {
        
        NavigationView{
            
            ScrollViewReader{proxy in
                ScrollView{
                    VStack(alignment: .center){
                        
                        Image(uiImage: guide.image!).resizable().aspectRatio(contentMode: .fit)
                        Spacer()
                            .frame(height: 10.0)
                        
                        VStack(alignment: .center){
                            Spacer()
                            HStack{
                                Text(guide.title)
                                    .fontWeight(.bold)
                                    .foregroundColor(Color.white)
                                    .multilineTextAlignment(.leading)
                                    .dynamicTypeSize(/*@START_MENU_TOKEN@*/.xxxLarge/*@END_MENU_TOKEN@*/)
                                Spacer()
                            }
                            
                            Spacer()
                            HStack{
                                
                                Image(uiImage: guide.deviceicon!).resizable().frame(width: 20.0, height: 20.0)
                                Text(guide.platform)
                                    .foregroundColor(Color.white)
                                    .dynamicTypeSize(/*@START_MENU_TOKEN@*/.medium/*@END_MENU_TOKEN@*/)
                                Spacer()
                                Image(uiImage: guide.icon!).resizable()
                                    .frame(width: 20.0, height: 20.0)
                                Text(guide.autor).foregroundColor(Color.white).dynamicTypeSize(/*@START_MENU_TOKEN@*/.medium/*@END_MENU_TOKEN@*/)
                                Spacer()
                            }
                            Spacer()
                                
                            Text(guide.text)
                                .foregroundColor(Color.white)
                                .lineLimit(1000)
                                .dynamicTypeSize(/*@START_MENU_TOKEN@*/.large/*@END_MENU_TOKEN@*/)
                            
                            Spacer()
                        }
                        .padding()
                        
                       
                        
                        Spacer()
                    }
                    Spacer()
                }
            }.toolbarColorScheme(.dark, for: .navigationBar)
                .toolbarBackground(
                    Color("Menu"),
                    for: .navigationBar)
                .toolbarBackground(.visible, for: .navigationBar).frame(maxWidth: .infinity, maxHeight: .infinity).scrollIndicators(.hidden).navigationBarTitleDisplayMode(.inline).backgroundPreferenceValue(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=Preference Key@*/PreferredColorSchemeKey.self/*@END_MENU_TOKEN@*/) { value in
                    Color("AccentColor")
                }.scrollIndicators(.hidden)
            
            
            
        }
        
        
    }
}

struct GuidePage_Previews: PreviewProvider {
    static var previews: some View {
        GuidePage(guide: GuideDataObject.mock())
    }
}
