//
//  Article.swift
//  About Sloths
//
//  Created by Andrew Pitblado on 2023-07-10.
//

import SwiftUI
import CachedAsyncImage

struct Article: View {
    let title: String
    let urlToImage: String
    let author: String
    let description: String
    let content: String
    
    var body: some View {
        VStack (alignment: .center ){
            
            Text(title)
                .foregroundStyle(.white)
                .italic()
                .padding(30)
            HStack(alignment: .center){
                CachedAsyncImage(url: URL(string:urlToImage),
                                 transaction:Transaction(animation: .easeInOut)) {phase in
                    if let image = phase.image {
                        image
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .clipShape(RoundedRectangle(cornerRadius: 25.0, style: .continuous))
                            .transition(.opacity)
                        
                    } else{
                        HStack{
                            ProgressView()
                            
                        }
                    }
                    
                    
                }
            }
            .padding()
            
            Text(author)
                .font(.headline)
                .padding(10)
            Text(description)
                .lineLimit(6)
                .font(.body)
                .padding(30)
        }
        .dynamicTypeSize(.medium)
        .background(Color.accentColor)
        .clipShape(RoundedRectangle(cornerRadius: 25.0))
        
        
        
        
        
    }
}

#Preview {
    Article(title: "Sloths", urlToImage: "..../", author: "Andrew", description: "What I think about sloths", content: "Sloths are amazing")
}
