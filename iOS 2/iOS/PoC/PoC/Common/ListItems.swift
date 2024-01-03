//
//  ListItems.swift
//  PoC
//
//  Created by Matias Flores on 03/11/2022.
//

import SwiftUI

struct ListItems: View {
    
    @StateObject var pp = GamesObservableObject()
    var game: GamesDataObject
    var body: some View {
        ZStack{
            
            Spacer()
            //Category button
            Button("") {
                /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/ /*@END_MENU_TOKEN@*/
            }.padding().frame(width: 110.0, height: 180.0).background(Image(uiImage: game.image!).resizable(capInsets: EdgeInsets(top: 0.0, leading: 0.0, bottom: 0.0, trailing: 0.0)).aspectRatio(contentMode: .fill).frame(width: 110.0, height: 180.0)).cornerRadius(/*@START_MENU_TOKEN@*/10.0/*@END_MENU_TOKEN@*/)
            
            Spacer()
            
            //Add selection button
            Button("") {
                /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/ /*@END_MENU_TOKEN@*/
            }.padding().frame(width: 50.0, height: 40.0).background(Image("plus").resizable(resizingMode: .stretch).aspectRatio(contentMode: .fill).frame(width: 40.0, height: 30.0)).backgroundPreferenceValue(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=Preference Key@*/PreferredColorSchemeKey.self/*@END_MENU_TOKEN@*/) { value in
                Color.green
                    .opacity(0.5)
            }.cornerRadius(/*@START_MENU_TOKEN@*/5.0/*@END_MENU_TOKEN@*/)
            
            Spacer()
            
        }
        .border(/*@START_MENU_TOKEN@*/Color("Menu")/*@END_MENU_TOKEN@*/, width: /*@START_MENU_TOKEN@*/3/*@END_MENU_TOKEN@*/)
        .cornerRadius(/*@START_MENU_TOKEN@*/5.0/*@END_MENU_TOKEN@*/)
        .shadow(radius: /*@START_MENU_TOKEN@*/15/*@END_MENU_TOKEN@*/)
    }
}

struct ListItems_Previews: PreviewProvider {
    static var previews: some View {
        ListItems(game: GamesDataObject.mock2())
    }
}
