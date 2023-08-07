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
            
            NewsView()
                .tabItem {
                    Label("News", systemImage: "newspaper")
                }
            FunFacts()
                .tabItem{
                    Label("Facts", systemImage: "questionmark.square.fill")
                }
            
            
            
           
        }
        
    }
}

@available(iOS 16.0, *)
#Preview  {
    
    ContentView()
}

