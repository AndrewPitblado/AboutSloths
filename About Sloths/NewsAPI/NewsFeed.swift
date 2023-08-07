//
//  NewsFeed.swift
//  About Sloths
//
//  Created by Andrew Pitblado on 2023-07-10.
//

import SwiftUI

struct NewsFeed: View {
    @EnvironmentObject var data:  NewsAPI
    //@State private var NewsArticles: [article] = []
    @Environment(\.openURL) var openURL
    private var textWidth = 300
    
    
    var body: some View {
        
        List(data.news?.articles ?? [], id: \.title) { article in
                   Article(title: article.title, urlToImage: article.urlToImage ?? ".../", author: article.author ?? "Andrew", description: article.description, content: article.content ?? "Nothing here")
                       .onTapGesture {
                           if let url = URL(string: article.url) {
                               openURL(url)
                           }
                       }
               }
               .refreshable {
                   data.getData()
                   print("Number of articles: \(data.news?.articles.count ?? 0)")
               }
               .onAppear {
                   data.getData()
                   print("Number of articles: \(data.news?.articles.count ?? 0)")
               }
        
//        .onChange(of: data.news) { newValue in
//                    if let news = newValue {
//                        print("News loaded successfully! Total Articles: \(news.totalResults)")
//                    } else {
//                        print("News is nil or failed to load.")
//                    }
//                }
        
        
        
    }
}

#Preview {
    NewsFeed()
}
