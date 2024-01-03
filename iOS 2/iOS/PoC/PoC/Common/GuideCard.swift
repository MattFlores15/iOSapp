//
//  GuideCard.swift
//  PoC
//
//  Created by Matias Flores on 29/10/2022.
//

import SwiftUI
import UIKit

struct GuideCard: View {
    
    @State private var showGuideView = false
    @StateObject var pp = SearchObservableObject()
    var guide: GuideDataObject
    
    var body: some View {
        
        
        ScrollViewReader{proxy in
            GroupBox(label: Text(guide.name)
                .foregroundColor(Color.white)) {
                
                
                Spacer()
                    .frame(height: 10.0)
                NavigationLink(destination: GuidePage(guide: guide), isActive: $showGuideView){
                    
                    
                    Button("         "){
                        
                        
                        showGuideView = true
                        
                    }.padding(50.0).background(Image(uiImage: guide.image!).resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 320.0, height: 180.0)).frame(width: 310.0, height: 180.0)
                }
                
                
                
                
                Spacer()
                    .frame(height: 25.0)
                
                    Text(guide.text)
                        .foregroundColor(Color.white)
                    .multilineTextAlignment(.leading)
                    .lineLimit(3)
                
                HStack(){
                    Image(uiImage: guide.deviceicon!).resizable().frame(width: 20.0, height: 20.0)
                    Text(guide.platform)
                        .foregroundColor(Color.white)
                        .multilineTextAlignment(.leading)
                        .frame(width: nil)
                        .dynamicTypeSize(/*@START_MENU_TOKEN@*/.small/*@END_MENU_TOKEN@*/)
                    
                    Spacer()
                        .frame(width: 62.0)
                    
                    
                    
                    Image(uiImage: guide.icon!).resizable().frame(width: 20.0, height: 20.0)
                    
                    Text(guide.autor)
                        .foregroundColor(Color.white)
                        .frame(width: nil)
                        .dynamicTypeSize(/*@START_MENU_TOKEN@*/.xSmall/*@END_MENU_TOKEN@*/)
                    
                    Spacer()
                    
                }
                
                
            }
            .padding(15.0)
            .shadow(radius: /*@START_MENU_TOKEN@*/5/*@END_MENU_TOKEN@*/)
            .groupBoxStyle(ColoredGroupBox())
        }.scrollIndicators(.hidden)

    }
    
    struct ColoredGroupBox: GroupBoxStyle {
        func makeBody(configuration: Configuration) -> some View {
            VStack(spacing: 5.0) {
                HStack(spacing: 10.0) {
                    configuration.label
                        .font(.headline)
                        .accentColor(/*@START_MENU_TOKEN@*/.white/*@END_MENU_TOKEN@*/)
                    Spacer()
                }
                
                configuration.content
            }
            .padding()
            .background(RoundedRectangle(cornerRadius: 20, style: .continuous)
                .fill(Color("AccentColor"))) // Set your color here!!
        }
    }
    
    struct GuideCard_Previews: PreviewProvider {
        static var previews: some View {
            GuideCard(guide: GuideDataObject.mock())
        }
    }
}
