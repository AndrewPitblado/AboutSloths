//
//  NewsAPIClient.swift
//  About Sloths
//
//  Created by Andrew Pitblado on 2023-07-09.
//

import Foundation






     class NewsAPI: ObservableObject{
        @Published var news: News?
         //private let apiKey = "ae502be120e54158912912e80c6c31d7"
        
        func getData(){
            guard let url = URL(string: "https://newsapi.org/v2/everything?q=sloth&apiKey=ae502be120e54158912912e80c6c31d7") else{
                return
            }
            
            URLSession.shared.dataTask(with: url){data, response, error in
                if let error = error {
                    print("Error: \(error)")
                    debugPrint(error)
                    return
                }
                
                if let data = data {
                    do{
                        let decoder = JSONDecoder()
                            decoder.keyDecodingStrategy = .convertFromSnakeCase
                        let newsData = try decoder.decode(News.self, from: data)
                        
                        
                        DispatchQueue.main.async {
                            print("Loaded data successfully, Articles: \(newsData.totalResults)")
                            self.news = News(status: newsData.status, totalResults: newsData.totalResults, articles: newsData.articles)
                            }
                    }catch{
                        print("Error decoding JSON: \(error)")
                    }
                    
                }
                
            }.resume()
                    
        }

    }


 //MARK: - Welcome
struct News: Codable, Equatable {
    let status: String
    let totalResults: Int
    let articles: [article]
    
    static func ==(lhs: News, rhs: News) -> Bool {
           // Implement your custom comparison logic here
           // For example, you could compare the totalResults or other properties if needed.
           return lhs.totalResults == rhs.totalResults && lhs.status == rhs.status
       }
}


// MARK: - Article
struct article: Codable{
    
    

    let author: String?
    let title, description: String
    let url: String
    let urlToImage: String?
    let publishedAt: String
    let content: String?
    let source : Source
}


//// MARK: - Source
struct Source: Codable, Identifiable {
    let id: String?
    let name: String
}



//        func getArticles() async throws -> [NewsArticle] {
//            let endpoint = "https://newsapi.org/v2/everything?q=sloth&apiKey=ae502be120e54158912912e80c6c31d7"
//
//            guard let url = URL(string: endpoint) else {throw URLError(.badURL)}
//
//            let (data, response) = try await URLSession.shared.data(from: url)
//
//            guard let response = response as? HTTPURLResponse, response.statusCode == 200 else{
//                throw URLError(.badServerResponse)
//            }
//
//
//            do {
//                let json = try JSONSerialization.jsonObject(with: data) as? [String: Any]
//                if let articles = json?["articles"] as? [[String: Any]] {
//                    let decoder = JSONDecoder()
//                    print(String(data: data, encoding: .utf8)!)
//                    return try decoder.decode([NewsArticle].self, from: JSONSerialization.data(withJSONObject: articles))
//                }
//
//            }
//
//            catch {
//                throw error
//            }
//            throw APIError.invalidData
//        }
