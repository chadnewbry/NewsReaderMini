//
//  ArticleManager.swift
//  NewsReaderMini
//
//  Created by Chad Newbry on 12/12/22.
//

import Foundation

class ArticleManager {
        
    let articles: [Article] = [
//        Article(id: "0", publisher: "Chad", title: "Another day in the park"),
//        Article(id: "1", publisher: "Argentinia Times", title: "Messi Advances to the next round"),
//        Article(id: "2", publisher: "Spanish Times", title: "Ronaldo out of the World Cup")
    ]
    
    func refresh() async throws -> [Article] {
        var components = URLComponents()
        components.scheme = "https"
        components.host = "doubleplay-sports-yql.media.yahoo.com"
        components.path = "/v3/sports_news"
        components.queryItems = [
            URLQueryItem(name: "leagues", value: "sports"),
            URLQueryItem(name: "stream_type", value: "headlines"),
            URLQueryItem(name: "count", value: "10"),
            URLQueryItem(name: "region", value: "US"),
            URLQueryItem(name: "lang", value: "en-US")
        ]
        
        
        guard let url = components.url else {
//            print("failed to construct URL")
            preconditionFailure("Failed to construct URL")
        }

        let (data, _) = try await URLSession.shared.data(from: url)
        
        
//        // TODO: handle errors more elegantly
//        let task = URLSession.shared.dataTask(with: url) {
//        data, response, error in
        
//        guard let data = data else {
//
//            preconditionFailure("Failed to parse data from the networking request")
////                print(json)
//
//        }
        
        guard let json = try! JSONSerialization.jsonObject(with: data, options: .allowFragments) as? [String: Any] else {
            preconditionFailure("Failed to parse JSON from Data")
        }
        
        
                
        guard let itemsDict = json["items"] as? [String : Any]  else {
                preconditionFailure("Failed to get items from data")
        }
        
//        print(itemsDict)
        
//        print(itemsDict)
        guard let itemResults = itemsDict["result"] as? [Any] else {
            preconditionFailure("Failed to get Articles from data")
        }
        
        print(itemResults.first)
        
        return [Article]()
//        return itemResults
//        }
        
//        task.resume()
    }
}
          
            
//
//                if let data = data {
//
//
//
               

//                    do {
//                        let decoder = JSONDecoder()
////                        return try decoder.decode(Article, from: data)
//                    } catch {
////                        fatalError("Couldn't parse \(filename) as \(T.self):\n\(error)")
//                    }


//                    var s = String(decoding: data, as: UTF8.self)
//                    print(s)
//                    label.text =
//                } else {
////                    label.text = error?.localizedDescription
//                }
//            }
//        }


    

