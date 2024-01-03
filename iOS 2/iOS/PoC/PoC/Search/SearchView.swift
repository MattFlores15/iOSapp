//
//  Search1.swift
//  PoC
//
//  Created by Matias Flores on 27/10/2022.
//

import SwiftUI

struct SearchView: View {
    
    @StateObject var oo = SearchObservableObject()
    @State private var searchTerm = ""
    
    var body: some View {
        
        NavigationView{
            
            ScrollViewReader{proxy in
                
                VStack{
                    Text("Find a guide").font(.title.weight(.bold))
                    Text("Start Searching for your video game guides")
                        .multilineTextAlignment(.center)
                }
            }.padding().frame(maxWidth: .infinity, maxHeight: .infinity).foregroundColor(.gray).navigationTitle("Search").navigationBarTitleDisplayMode(.inline).scrollIndicators(.hidden).toolbarColorScheme(.dark, for: .navigationBar)
                .toolbarBackground(
                    Color("Menu"),
                    for: .navigationBar)
                .toolbarBackground(.visible, for: .navigationBar).frame(maxWidth: .infinity, maxHeight: .infinity).scrollIndicators(.hidden).navigationBarTitleDisplayMode(.inline).backgroundPreferenceValue(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=Preference Key@*/PreferredColorSchemeKey.self/*@END_MENU_TOKEN@*/) { value in
                    Color("AccentColor")
                }.scrollIndicators(.hidden)
            
        }.searchable(text: $searchTerm){
            
                ForEach(oo.searchResults){
                    guide in
                    GuideCard(guide: guide)
                }
            
        }
        .onChange(of: searchTerm){ searchTerm in
            oo.searchResults = oo.data.filter({ guide in
                guide.name.lowercased().contains(searchTerm.lowercased())
            })
        }.backgroundPreferenceValue(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=Preference Key@*/PreferredColorSchemeKey.self/*@END_MENU_TOKEN@*/) { value in
            Color("AccentColor")
        }.background(Color("AccentColor"))
    }
}
struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
        SearchView()
    }
}
