//
//  ContentView.swift
//  About Sloths
//
//  Created by Andrew Pitblado on 2023-06-12.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        TabView{
            HomeView()
                .tabItem {
                    Label("Home", systemImage: "house")}
            
            StoryView()
                .tabItem {
                    Label("History", systemImage: "book") }
            FoodView()
                .tabItem{
                    Label("Diet", systemImage: "fork.knife")
                }
            FunFacts()
                .tabItem{
                    Label("Facts", systemImage: "questionmark.square.fill")
                }
            
            
            
           
        }
        
    }
}

#Preview {
    ContentView()
}
