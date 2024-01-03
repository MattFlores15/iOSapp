//
//  ContentView.swift
//  PoC
//
//  Created by Matias Flores on 23/10/2022.
//

import SwiftUI

struct InitialPageView: View {
    
    @State private var showHomeView = false
    
    @State private var changeButton = false
    
    var body: some View {
        
        
        NavigationView{
            ScrollViewReader { proxy in
                
                VStack(alignment: .center, spacing: 5.0){
                    Spacer()
                    Text("Choose your guides!")
                        .fontWeight(.bold)
                        .foregroundColor(Color.white)
                    
                    Spacer()
                        VStack(alignment: .leading){
                            Text("Decades")
                                .fontWeight(.semibold)
                                .foregroundColor(Color.white)
                                .multilineTextAlignment(.leading)
                                .padding(5.0)
                                .background(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=View@*/Color("AccentColor")/*@END_MENU_TOKEN@*/)
                            
                            //Categories container
                            ScrollView (.horizontal){
                                
                                HStack () {
                                    Spacer()
                                    
                                    
                                    ZStack{
                                        //Category button
                                        Button("") {
                                            
                                        }.padding().frame(width: 90.0, height: 90.0).background( Image("80s").resizable(capInsets: EdgeInsets(top: 0.0, leading: 0.0, bottom: 0.0, trailing: 0.0)).aspectRatio(contentMode: .fill).frame(width: 90.0, height: 90.0)).cornerRadius(10.0)
                                        
                                        //Add selection button
                                        Button("    ") {
                                            self.changeButton = true
                                        }.padding(5.0).frame(width: 30.0, height: 30.0).background(Image(changeButton ? "correct": "plus").resizable(resizingMode: .stretch).aspectRatio(contentMode: .fill).frame(width: 30.0, height: 30.0)).backgroundPreferenceValue(/*@PLACEHOLDER=Preference Key@*/PreferredColorSchemeKey.self) { value in
                                            Color("ToolB")
                                        }.cornerRadius(5.0)
                                            .position(x: 45.0, y: 45.0)
                                        
                                    }
                                    
                                    
                                    Spacer()
                                    
                                    ZStack{
                                        //Category button
                                        
                                        Button("") {
                                            
                                        }.padding().frame(width: 90.0, height: 90.0).background(Image("90s").resizable(capInsets: EdgeInsets(top: 0.0, leading: 0.0, bottom: 0.0, trailing: 0.0), resizingMode: .stretch).aspectRatio(contentMode: .fill).padding().frame(width: 123.0, height: 90.0)).cornerRadius(10.0)
                                        
                                        //Add selection button
                                        Button("      ") {
                                            self.changeButton = true
                                        }.padding(5.0).frame(width: 30.0, height: 30.0).background(Image("plus").resizable(resizingMode: .stretch).aspectRatio(contentMode: .fill).frame(width: 30.0, height: 30.0)).backgroundPreferenceValue(/*@PLACEHOLDER=Preference Key@*/PreferredColorSchemeKey.self) { value in
                                            Color("ToolB")
                                        }.cornerRadius(5.0)
                                            .position(x: 45.0, y: 45.0)
                                    }
                                    
                                    Spacer()
                                    
                                    ZStack{
                                        //Category button
                                        Button("") {
                                            
                                        }.padding().frame(width: 90.0, height: 90.0).background(Image("00s").resizable(capInsets: EdgeInsets(top: 0.0, leading: 0.0, bottom: 0.0, trailing: 0.0)).aspectRatio(contentMode: .fill).frame(width: 90.0, height: 90.0)).cornerRadius(10.0)
                                        
                                        //Add selection butto
                                        Button("") {
                                            
                                        }.padding().frame(width: 30.0, height: 30.0).background(Image("plus").resizable(resizingMode: .stretch).aspectRatio(contentMode: .fill).frame(width: 30.0, height: 30.0)).backgroundPreferenceValue(/*@PLACEHOLDER=Preference Key@*/PreferredColorSchemeKey.self) { value in
                                            Color("ToolB")
                                        }.cornerRadius(5.0)
                                            .position(x: 45.0, y: 45.0)
                                    }
                                    
                                    Spacer()
                                    
                                    ZStack{
                                        //Category button
                                        
                                        Button("") {
                                            
                                        }.padding().frame(width: 90.0, height: 90.0).background(Image("10s").resizable(capInsets: EdgeInsets(top: 0.0, leading: 0.0, bottom: 0.0, trailing: 0.0)).aspectRatio(contentMode: .fit).frame(width: 90.0, height: 90.0)).cornerRadius(10.0)
                                        
                                        //Add selection butto
                                        Button("") {
                                            
                                        }.padding().frame(width: 30.0, height: 30.0).background(Image("plus").resizable(resizingMode: .stretch).aspectRatio(contentMode: .fill).frame(width: 30.0, height: 30.0)).backgroundPreferenceValue(/*@PLACEHOLDER=Preference Key@*/PreferredColorSchemeKey.self) { value in
                                            Color("ToolB")
                                        }.cornerRadius(5.0)
                                            .position(x: 45.0, y: 45.0)
                                    }
                                    
                                    Spacer()
                                    
                                    ZStack{
                                        //Category button
                                        
                                        Button("") {
                                            
                                        }.padding().frame(width: 90.0, height: 90.0).background(Image("20s").resizable(capInsets: EdgeInsets(top: 0.0, leading: 20.0, bottom: 0.0, trailing: 0.0)).aspectRatio(contentMode: .fill).frame(width: 90.0, height: 90.0)).cornerRadius(10.0)
                                        
                                        //Add selection butto
                                        Button("") {
                                            
                                        }.padding().frame(width: 30.0, height: 30.0).background(Image("plus").resizable(resizingMode: .stretch).aspectRatio(contentMode: .fill).frame(width: 30.0, height: 30.0)).backgroundPreferenceValue(/*@PLACEHOLDER=Preference Key@*/PreferredColorSchemeKey.self) { value in
                                            Color("ToolB")
                                        }.cornerRadius(5.0)
                                            .position(x: 45.0, y: 45.0)
                                    }
                                    
                                }
                                .padding(16.0)
                            }
                            .padding(2.0)
                            .background(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=View@*/Color("AccentColor")/*@END_MENU_TOKEN@*/)
                            
                            Text("Genre")
                                .fontWeight(.semibold)
                                .foregroundColor(Color.white)
                                .multilineTextAlignment(.leading)
                                .padding(5.0)
                                .background(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=View@*/Color("AccentColor")/*@END_MENU_TOKEN@*/)
                            
                            ScrollView (.horizontal){
                                HStack {
                                    Spacer()
                                    
                                    ZStack{
                                        //Category button
                                        Button("") {
                                            
                                        }.padding().frame(width: 90.0, height: 90.0).background(Image("fight").resizable(capInsets: EdgeInsets(top: 0.0, leading: 0.0, bottom: 0.0, trailing: 0.0)).aspectRatio(contentMode: .fill).frame(width: 60.0, height: 60.0)).backgroundPreferenceValue(/*@PLACEHOLDER=Preference Key@*/PreferredColorSchemeKey.self) { value in
                                            Color.red
                                        }.cornerRadius(10.0)
                                        
                                        //Add selection butto
                                        Button("") {
                                            
                                        }.padding().frame(width: 30.0, height: 30.0).background(Image("plus").resizable(resizingMode: .stretch).aspectRatio(contentMode: .fill).frame(width: 30.0, height: 30.0)).backgroundPreferenceValue(/*@PLACEHOLDER=Preference Key@*/PreferredColorSchemeKey.self) { value in
                                            Color("ToolB")
                                        }.cornerRadius(5.0)
                                            .position(x: 45.0, y: 45.0)
                                    }
                                    
                                    Spacer()
                                    
                                    ZStack{
                                        //Category button
                                        
                                        Button("") {
                                            
                                        }.padding().frame(width: 90.0, height: 90.0).background(Image("rpg").resizable(capInsets: EdgeInsets(top: 0.0, leading: 0.0, bottom: 0.0, trailing: 0.0), resizingMode: .stretch).aspectRatio(contentMode: .fill).padding().frame(width: 80.0, height: 95.0)).backgroundPreferenceValue(/*@PLACEHOLDER=Preference Key@*/PreferredColorSchemeKey.self) { value in
                                            Color.green
                                        }.cornerRadius(10.0)
                                        
                                        //Add selection butto
                                        Button("") {
                                            
                                        }.padding().frame(width: 30.0, height: 30.0).background(Image("plus").resizable(resizingMode: .stretch).aspectRatio(contentMode: .fill).frame(width: 30.0, height: 30.0)).backgroundPreferenceValue(/*@PLACEHOLDER=Preference Key@*/PreferredColorSchemeKey.self) { value in
                                            Color("ToolB")
                                        }.cornerRadius(5.0)
                                            .position(x: 45.0, y: 45.0)
                                    }
                                    
                                    Spacer()
                                    
                                    
                                    ZStack{
                                        //Category button
                                        Button("") {
                                            
                                        }.padding().frame(width: 90.0, height: 90.0).background(Image("racing").resizable(capInsets: EdgeInsets(top: 0.0, leading: 0.0, bottom: 0.0, trailing: 0.0)).aspectRatio(contentMode: .fill).frame(width: 60.0, height: 70.0)).backgroundPreferenceValue(/*@PLACEHOLDER=Preference Key@*/PreferredColorSchemeKey.self) { value in
                                            Color.yellow
                                        }.cornerRadius(10.0)
                                        //Add selection butto
                                        Button("") {
                                            
                                        }.padding().frame(width: 30.0, height: 30.0).background(Image("plus").resizable(resizingMode: .stretch).aspectRatio(contentMode: .fill).frame(width: 30.0, height: 30.0)).backgroundPreferenceValue(/*@PLACEHOLDER=Preference Key@*/PreferredColorSchemeKey.self) { value in
                                            Color("ToolB")
                                        }.cornerRadius(5.0)
                                            .position(x: 45.0, y: 45.0)
                                    }
                                    Spacer()
                                    
                                    ZStack{
                                        //Category button
                                        Button("") {
                                            
                                        }.padding().frame(width: 90.0, height: 90.0).background(Image("match").resizable(capInsets: EdgeInsets(top: 0.0, leading: 0.0, bottom: 0.0, trailing: 0.0)).aspectRatio(contentMode: .fill).frame(width: 60.0, height: 70.0)).backgroundPreferenceValue(/*@PLACEHOLDER=Preference Key@*/PreferredColorSchemeKey.self) { value in
                                            Color.cyan
                                        }.cornerRadius(10.0)
                                        
                                        //Add selection butto
                                        Button("") {
                                            
                                        }.padding().frame(width: 30.0, height: 30.0).background(Image("plus").resizable(resizingMode: .stretch).aspectRatio(contentMode: .fill).frame(width: 30.0, height: 30.0)).backgroundPreferenceValue(/*@PLACEHOLDER=Preference Key@*/PreferredColorSchemeKey.self) { value in
                                            Color("ToolB")
                                        }.cornerRadius(5.0)
                                            .position(x: 45.0, y: 45.0)
                                    }
                                    
                                    Spacer()
                                    
                                }
                                .padding(16.0)
                            }
                            .padding(2.0)
                            .background(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=View@*/Color("AccentColor")/*@END_MENU_TOKEN@*/)
                            
                            Text("Platform")
                                .fontWeight(.semibold)
                                .foregroundColor(Color.white)
                                .multilineTextAlignment(.leading)
                                .padding(5.0)
                                .background(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=View@*/Color("AccentColor")/*@END_MENU_TOKEN@*/)
                            
                            ScrollView (.horizontal){
                                HStack {
                                    Spacer()
                                    
                                    ZStack{
                                        //Category button
                                        
                                        Button("") {
                                            
                                        }.padding().frame(width: 90.0, height: 90.0).background(Image("handheld").resizable(capInsets: EdgeInsets(top: 0.0, leading: 0.0, bottom: 0.0, trailing: 0.0)).aspectRatio(contentMode: .fill).frame(width: 60.0, height: 60.0)).backgroundPreferenceValue(/*@PLACEHOLDER=Preference Key@*/PreferredColorSchemeKey.self) { value in
                                            Color.blue
                                        }.cornerRadius(10.0)
                                        
                                        //Add selection butto
                                        Button("") {
                                            
                                        }.padding().frame(width: 30.0, height: 30.0).background(Image("plus").resizable(resizingMode: .stretch).aspectRatio(contentMode: .fill).frame(width: 30.0, height: 30.0)).backgroundPreferenceValue(/*@PLACEHOLDER=Preference Key@*/PreferredColorSchemeKey.self) { value in
                                            Color("ToolB")
                                        }.cornerRadius(5.0)
                                            .position(x: 45.0, y: 45.0)
                                    }
                                    
                                    Spacer()
                                    
                                    ZStack{
                                        //Category button
                                        
                                        Button("") {
                                            
                                        }.padding().frame(width: 90.0, height: 90.0).background(Image("console").resizable(capInsets: EdgeInsets(top: 0.0, leading: 0.0, bottom: 0.0, trailing: 0.0), resizingMode: .stretch).aspectRatio(contentMode: .fill).padding().frame(width: 60.0, height: 90.0)).backgroundPreferenceValue(/*@PLACEHOLDER=Preference Key@*/PreferredColorSchemeKey.self) { value in
                                            Color.indigo
                                        }.cornerRadius(10.0)
                                        
                                        //Add selection butto
                                        Button("") {
                                            
                                        }.padding().frame(width: 30.0, height: 30.0).background(Image("plus").resizable(resizingMode: .stretch).aspectRatio(contentMode: .fill).frame(width: 30.0, height: 30.0)).backgroundPreferenceValue(/*@PLACEHOLDER=Preference Key@*/PreferredColorSchemeKey.self) { value in
                                            Color("ToolB")
                                        }.cornerRadius(5.0)
                                            .position(x: 45.0, y: 45.0)
                                    }
                                    
                                    Spacer()
                                    
                                    ZStack{
                                        //Category button
                                        
                                        Button("") {
                                            
                                        }.padding().frame(width: 90.0, height: 90.0).background(Image("pc").resizable(capInsets: EdgeInsets(top: 0.0, leading: 0.0, bottom: 0.0, trailing: 0.0)).aspectRatio(contentMode: .fill).frame(width: 60.0, height: 60.0)).backgroundPreferenceValue(/*@PLACEHOLDER=Preference Key@*/PreferredColorSchemeKey.self) { value in
                                            Color.teal
                                                .cornerRadius(10.0)
                                            
                                            
                                            
                                        }
                                        
                                        //Add selection butto
                                        Button("") {
                                            
                                        }.padding().frame(width: 30.0, height: 30.0).background(Image("plus").resizable(resizingMode: .stretch).aspectRatio(contentMode: .fill).frame(width: 30.0, height: 30.0)).backgroundPreferenceValue(/*@PLACEHOLDER=Preference Key@*/PreferredColorSchemeKey.self) { value in
                                            Color("ToolB")
                                        }.cornerRadius(5.0)
                                            .position(x: 45.0, y: 45.0)
                                    }
                                    
                                    ZStack{
                                        //Category button
                                        Button("") {
                                            
                                        }.padding().frame(width: 90.0, height: 90.0).background(Image("mobile").resizable(capInsets: EdgeInsets(top: 0.0, leading: 0.0, bottom: 0.0, trailing: 0.0)).aspectRatio(contentMode: .fill).frame(width: 60.0, height: 60.0)).backgroundPreferenceValue(/*@PLACEHOLDER=Preference Key@*/PreferredColorSchemeKey.self) { value in
                                            Color.orange
                                                .cornerRadius(10.0)
                                        }
                                        
                                        //Add selection button
                                        Button("") {
                                            
                                        }.padding().frame(width: 30.0, height: 30.0).background(Image("plus").resizable(resizingMode: .stretch).aspectRatio(contentMode: .fill).frame(width: 30.0, height: 30.0)).backgroundPreferenceValue(/*@PLACEHOLDER=Preference Key@*/PreferredColorSchemeKey.self) { value in
                                            Color("ToolB")
                                        }.cornerRadius(5.0)
                                            .position(x: 45.0, y: 45.0)
                                    }
                                    Spacer()
                                    
                                }
                                .padding(16.0)
                            }
                            .padding(2.0)
                            .background(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=View@*/Color("AccentColor")/*@END_MENU_TOKEN@*/)
                        }
                        .padding(5.0)
                        .background(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=View@*/Color("Menu")/*@END_MENU_TOKEN@*/)
                }
                    
                Spacer()
                    .frame(height: 20.0)
                    
                    //NavLink Buttons
                    HStack{
                        NavigationLink(destination: TabViewContent(guide: GuideDataObject.mock()), isActive: $showHomeView){
                            
                        }
                        Spacer()
                        //Skip Button
                        Button("Skip"){
                            showHomeView = true
                        }
                        .padding(5)
                        .buttonStyle(.borderless).accentColor(.gray)
                        
                        Spacer()
                        
                        //Confirmation Button
                        Button("Confirm Choices"){
                            showHomeView = true
                        }.padding(5).buttonStyle(.bordered).background(Color("ToolB")).cornerRadius(5).accentColor(.white)
                        
                        Spacer()
                    }
                    .frame(height: 40.0)
                    
                Spacer()
                    .frame(height: 50.0)
                    
                    
                }.navigationTitle("  ").toolbarColorScheme(.dark, for: .navigationBar)
                .toolbarBackground(
                    Color("Menu"),
                    for: .navigationBar)
                .toolbarBackground(.visible, for: .navigationBar).frame(maxWidth: .infinity, maxHeight: .infinity).scrollIndicators(.hidden).navigationBarTitleDisplayMode(.inline).backgroundPreferenceValue(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=Preference Key@*/PreferredColorSchemeKey.self/*@END_MENU_TOKEN@*/) { value in
                    Color("AccentColor")
                }
                .padding(5.0)
                .background(Color("AccentColor")).backgroundPreferenceValue(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=Preference Key@*/PreferredColorSchemeKey.self/*@END_MENU_TOKEN@*/) { value in
                    Color("AccentColor")
                }
                
                
            }
        }
        
        
        
    }


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        InitialPageView()
    }
}

