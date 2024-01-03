//
//  SwiftUIView.swift
//  PoC
//
//  Created by Matias Flores on 26/10/2022.
//

import SwiftUI
import UIKit

struct HomeView: View {
    
    
    @StateObject var oo = SearchObservableObject()
    var guide: GuideDataObject
    @State var selectedCard: GuideDataObject?
    @State var showAddGames = false
    
    var body: some View {
        
        NavigationView{
            ScrollViewReader { proxy in
                
                ScrollView(.vertical){
                    Spacer()
                    
                    VStack(){
                        
                        HStack(){
                            
                            Spacer()
                            Image("guide-logo").resizable(capInsets: EdgeInsets()).frame(width: 40.0, height: 50.0).position(x: 19.0, y: 25.0)
                            
                            Spacer()
                            Text("GuideMania")
                                .fontWeight(.bold)
                                .foregroundColor(Color("ToolB"))
                                .multilineTextAlignment(.leading).position(y: 25.0)
                                .dynamicTypeSize(/*@START_MENU_TOKEN@*/.xLarge/*@END_MENU_TOKEN@*/)
                            
                            Spacer()
                                .frame(width: 200.0)
                            
                            
                            Spacer()
                                .frame(width: 12.0)
                            
                            Spacer()
                        }//End of First HStack
                        
                        
                        HStack(){
                            
                            
                           
                            Spacer()
                                .frame(width: 10.0)
                            //Category button
                            Button("         "){
                                
//                                self.selectedCard?.id.hash(into: &1)
                                
                            }.padding(5.0).frame(width: 70.0, height: 70.0).background(Image("80s").resizable(capInsets: EdgeInsets(top: 0.0, leading: 0.0, bottom: 0.0, trailing: 0.0)).aspectRatio(contentMode: .fill).frame(width: 70.0, height: 70.0)).cornerRadius(/*@START_MENU_TOKEN@*/10.0/*@END_MENU_TOKEN@*/)
                            
                            //Category button
                            Button("") {
                                /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/ /*@END_MENU_TOKEN@*/
                            }.padding().frame(width: 70.0, height: 70.0).background(Image("90s").resizable(capInsets: EdgeInsets(top: 0.0, leading: 0.0, bottom: 0.0, trailing: 0.0)).aspectRatio(contentMode: .fill).frame(width: 70.0, height: 70.0)).cornerRadius(/*@START_MENU_TOKEN@*/10.0/*@END_MENU_TOKEN@*/)
                            
                            //Category button
                    
                    Button("") {
                        /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/ /*@END_MENU_TOKEN@*/
                    }.padding().frame(width: 70.0, height: 70.0).background(Image("rpg").resizable(capInsets: EdgeInsets(top: 0.0, leading: 0.0, bottom: 0.0, trailing: 0.0), resizingMode: .stretch).aspectRatio(contentMode: .fill).padding().frame(width: 70.0, height: 75.0)).backgroundPreferenceValue(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=Preference Key@*/PreferredColorSchemeKey.self/*@END_MENU_TOKEN@*/) { value in
                        Color.green
                    }.cornerRadius(/*@START_MENU_TOKEN@*/10.0/*@END_MENU_TOKEN@*/)
                            
                            //Category button
                    
                    Button("") {
                        /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/ /*@END_MENU_TOKEN@*/
                    }.padding().frame(width: 70.0, height: 70.0).background(Image("console").resizable(capInsets: EdgeInsets(top: 0.0, leading: 0.0, bottom: 0.0, trailing: 0.0), resizingMode: .stretch).aspectRatio(contentMode: .fill).padding().frame(width: 70.0, height: 70.0)).backgroundPreferenceValue(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=Preference Key@*/PreferredColorSchemeKey.self/*@END_MENU_TOKEN@*/) { value in
                        Color.indigo
                    }.cornerRadius(/*@START_MENU_TOKEN@*/10.0/*@END_MENU_TOKEN@*/)
                            
                            Spacer()
                            
                        }
                        
                        Spacer()
                    }
                    .frame(height: 155.0)//End of first VStack
                    
                    Spacer()
                    
                    //Main Content Container, programatically generated
                    
                    
                    VStack(alignment: .leading){
                        
                        Text("Guides")
                            .fontWeight(.bold)
                            .foregroundColor(Color.white)
                            .multilineTextAlignment(.leading)
                            .padding(15.0)
                            .dynamicTypeSize(/*@START_MENU_TOKEN@*/.xxxLarge/*@END_MENU_TOKEN@*/)
                        
                        
                            VStack(spacing: 50.0){
                                
                                ForEach(oo.data){
                                    guide in
                                    GuideCard(guide: guide)
                                    
                                }
                                
                            }
                            .shadow(radius: /*@START_MENU_TOKEN@*/15/*@END_MENU_TOKEN@*/)
                        
                    }
                    
                    
                    
                    
                    Spacer()
                        .frame(height: 50.0)
                
                    
                    
                }
                
              
            }.navigationTitle("Homepage")            .toolbar {
                Button("  ") {
                    showAddGames.toggle()
                }.sheet(isPresented: $showAddGames, content: {
                    AddNewGamesView(game: GamesDataObject.mock2())
                })
                    .background(Image("plus").resizable()
                        .frame(width: 40.0, height: 40.0))
            }
            .toolbarColorScheme(.dark, for: .navigationBar)

            .toolbarBackground(
                Color("Menu"),
                for: .navigationBar)
            .toolbarBackground(.visible, for: .navigationBar).frame(maxWidth: .infinity, maxHeight: .infinity).scrollIndicators(.hidden).navigationBarTitleDisplayMode(.inline).backgroundPreferenceValue(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=Preference Key@*/PreferredColorSchemeKey.self/*@END_MENU_TOKEN@*/) { value in
                Color("AccentColor")
            }
                                                        
        }
        
        
       
        
    }
}

struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView( guide: GuideDataObject.mock())
    }
}
