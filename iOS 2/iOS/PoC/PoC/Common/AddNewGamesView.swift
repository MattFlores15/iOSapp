//
//  AddNewGamesView.swift
//  PoC
//
//  Created by Matias Flores on 02/11/2022.
//

import SwiftUI

struct AddNewGamesView: View {
    
    @StateObject var gg = GamesObservableObject()
    var game: GamesDataObject
    
    
    var body: some View {
        
        
        NavigationView{
            ScrollViewReader{proxy in
                
                ScrollView{
                    Spacer()
                    VStack(alignment: .center, spacing: 20.0) {
                        Spacer()
                        Text("Add new game guides!")
                            .fontWeight(.bold)
                            .foregroundColor(Color.white)
                            .dynamicTypeSize(/*@START_MENU_TOKEN@*/.xxLarge/*@END_MENU_TOKEN@*/)
                        
                        Spacer()
                        VStack(alignment: .leading){
                            Text("Retro 80s")
                                .fontWeight(.bold)
                                .foregroundColor(Color.white)
                                .multilineTextAlignment(.center)
                                .dynamicTypeSize(/*@START_MENU_TOKEN@*/.xLarge/*@END_MENU_TOKEN@*/).listRowBackground(Color("AccentColor"))
                            
                            //Categories container
                            ScrollView (.horizontal){
                                HStack(spacing: 10.0){
                                    ForEach(gg.data2.shuffled()){
                                        game in
                                        ListItems(game: game)
                                    }
                                }
                                
                            }
                            .padding(5.0)
                            .navigationBarHidden(/*@START_MENU_TOKEN@*/true/*@END_MENU_TOKEN@*/)
                            .listRowBackground(Color("AccentColor"))
                            
                            
                            
                            Text("90s Nostalgia")
                                .fontWeight(.bold)
                                .foregroundColor(Color.white)
                                .multilineTextAlignment(.leading).listRowBackground(Color("AccentColor"))
                                .dynamicTypeSize(/*@START_MENU_TOKEN@*/.xLarge/*@END_MENU_TOKEN@*/)
                            
                            ScrollView (.horizontal){
                                
                                HStack(spacing: 10.0){
                                    ForEach(gg.data2.shuffled()){
                                        game in
                                        ListItems(game: game)
                                        
                                    }
                                }
                                
                            }.listRowBackground(Color("AccentColor"))
                            
                            Text("Crazy 00s")
                                .fontWeight(.bold)
                                .foregroundColor(Color.white)
                                .multilineTextAlignment(.leading).listRowBackground(Color("AccentColor"))
                                .dynamicTypeSize(/*@START_MENU_TOKEN@*/.xLarge/*@END_MENU_TOKEN@*/)
                            
                            ScrollView (.horizontal){
                                
                                HStack(spacing: 10.0){
                                    ForEach(gg.data2.shuffled()){
                                        game in
                                        ListItems(game: game)
                                        
                                    }
                                }
                                
                            }
                        }
                        
                       
                        Spacer()
                        
                    }
                    .padding(10.0)
                }
                
                
                Spacer()
                
            }
            .background(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=View@*/Color("AccentColor")/*@END_MENU_TOKEN@*/)
        }.toolbarColorScheme(.dark, for: .navigationBar)
        
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

struct AddNewGamesView_Previews: PreviewProvider {
    static var previews: some View {
        AddNewGamesView(game: GamesDataObject.mock2())
    }
}
