//
//  NewsView.swift
//  About Sloths
//
//  Created by Andrew Pitblado on 2023-07-08.
//

import SwiftUI

struct NewsView: View {
    @StateObject var data = NewsAPI()
    //@State private var opac = 0.
    
    
    
    var body: some View {
        
        ZStack{
            LinearGradient(colors: [Color.blue.opacity(0.7), Color.green.opacity(0.6)], startPoint: .top, endPoint: .bottom)
                           .ignoresSafeArea()
            
            
            
            VStack {
                Text("Sloth News! ")
                    .padding()
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .background(Color(UIColor.systemBackground))
                    .clipShape(RoundedRectangle(cornerRadius: 15.0, style: .continuous))
                
                
                NewsFeed()
                    .background(Color(UIColor.systemBackground))
                                       
                    
                    
            }
            
            
            .onAppear{
                data.getData()
                
            }
           
        
        }
        .environmentObject(data)
        
    }
    

    
}



enum APIError: Error{
    case invalidData
    case invalidURL
}


#Preview {
    NewsView()
        
}
