//
//  HomeView.swift
//  About Sloths
//
//  Created by Andrew Pitblado on 2023-06-12.
//

import SwiftUI
import Kingfisher
struct HomeView: View {
    @Environment(\.colorScheme) var colorScheme
    @State private var imageUrls: [URL] = []
    @StateObject private var unsplashAPIService = UnsplashAPIService()
    var body: some View {
        
        ZStack {
            LinearGradient(colors: [Color.blue.opacity(0.7), Color.green.opacity(0.6)], startPoint: .top, endPoint: .bottom).ignoresSafeArea()
            
            VStack {
                
                Text("All about Sloths")
                    .padding()
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .background(Color(UIColor.systemBackground))
                    .clipShape(RoundedRectangle(cornerRadius: 15.0, style: .continuous))
                
                
                information.image
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .clipShape(RoundedRectangle(cornerRadius: 25.0, style: .continuous))
                    .padding(10)
                
                
                
                Text("This is your one stop shop for learning all about the worlds sleepist animal 😴🦥")
                    .padding()
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .foregroundStyle(.white)
                    .background(colorScheme == .dark ? Color(.systemGreen):Color.cyan.opacity(0.4))
                    .clipShape(RoundedRectangle(cornerRadius: 15.0, style: .continuous))
                Spacer()
                Rectangle()
                    .frame(height:0)
                    .background(.thinMaterial)
                
                ScrollView(.horizontal) {
                    ScrollViewReader { scrollViewProxy in
                        LazyHStack(spacing: 10) {
                            ForEach(imageUrls, id: \.self) { imageUrl in
                                KFImage(imageUrl)
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    
                                    
                                    .onAppear {
                                        // Scroll to the last image once they are loaded
                                        if imageUrl == imageUrls.last {
                                            scrollViewProxy.scrollTo(imageUrl, anchor: .center )
                                                
                                        }
                                    }
                            }
                        }
                        .padding(.horizontal)
                        .task {
                            
                            do {
                                let images = try await unsplashAPIService.fetchImages(query: "Sloths", count: 4, width:300, height:200, orientation: "landscape")
                                imageUrls = images.map { $0.urls.regular }
                            }
                            catch {
                                print("Error: \(error)")
                            }
                            
                        }
                    }
                    
                }
                
            }
            
        }
    }
}
    
struct UnsplashImage : Decodable, Identifiable {
        let id: String
        let width: Int
        let height: Int
        let urls: ImageURLs
}
    
struct ImageURLs: Decodable{
        let regular: URL
}
    
    class UnsplashAPIService: ObservableObject{
        private let accessKey = "dUDQu0rlMyUjPaeVBSY5hVezPCVu_avnTnGHSxjkQ4I"
        
        func fetchImages(query:String, count:Int, width: Int, height:Int, orientation: String) async throws -> [UnsplashImage] {
            let baseURL = "https://api.unsplash.com/photos/random"
            var urlComponents = URLComponents(string: baseURL)
            let queryItems: [URLQueryItem] = [
                
                URLQueryItem(name: "query", value: query),
                URLQueryItem(name: "count", value: String(count))
            
            
            ]
            
            
           
            urlComponents?.queryItems = queryItems
            
            
            guard let url = urlComponents?.url else {
                throw URLError(.badURL)
            }
            
            
            
            
            var request = URLRequest(url: url)
            request.setValue("Client-ID \(accessKey)", forHTTPHeaderField: "Authorization")
            
            let (data, _) = try await URLSession.shared.data(for: request)
            let decoder = JSONDecoder()
            return try decoder.decode([UnsplashImage].self, from: data)
        }
        
    }
    
    


#Preview {
    HomeView()
}
