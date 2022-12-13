//
//  ArticleManager.swift
//  NewsReaderMini
//
//  Created by Chad Newbry on 12/12/22.
//

import Foundation

class ArticleManager {
        
    private var articles = [Article]()
    
    var nextUUIDs = [String]()
    var startIndex = 0
    
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
        
        try await articles = helper(components: components)
        
        return articles
    }
    
    func helper(components: URLComponents, parseUUIDs: Bool = true ) async throws -> [Article] {
        guard let url = components.url else {
            preconditionFailure("Failed to construct URL")
        }

        let (data, _) = try await URLSession.shared.data(from: url)
        
        guard let dict = try! JSONSerialization.jsonObject(with: data, options: .allowFragments) as? [String: Any] else {
            preconditionFailure("Failed to parse JSON from Data")
        }
        
        guard let items = dict["items"] as? [String: Any] else {
            preconditionFailure("Failed to get items from data")
        }

        guard let result = items["result"] as? [[String: Any]] else {
            preconditionFailure("Failed to get result array")
        }
        
        var articles = [Article]()
        
        for d in result {
            // iterate over result dictionary and serialize
            
            let article = Article(from: d)
            articles.append(article)
        }
        
        // parse out the more section of UUIDs
        if parseUUIDs {
            guard let more = dict["more"] as? [String: Any] else {
                preconditionFailure("Unable to parse more dictionary")
            }
            
            guard let resultArray = more["result"] as? [[String: Any]] else {
                preconditionFailure("Unable to parse result array")
            }
            
            nextUUIDs = [String]()
            
            for d in resultArray {
                if let uuid = d["uuid"] as? String {
                    nextUUIDs.append(uuid)
                }
            }
            
            // every time we reload UUIDs we want to
            // reset the start index
            startIndex = 0
        }
        
        return articles
    }
    
    
    func fetchNextPage() async throws -> [Article] {
        // todo: merge component contruction
        var components = URLComponents()
        components.scheme = "https"
        components.host = "doubleplay-sports-yql.media.yahoo.com"
        components.path = "/v3/news_items"
        
        if startIndex+10 >= nextUUIDs.count {
            // return the existing articles as we don't want to go out of bounds of our array
            return articles
        }
        
        let uuids = nextUUIDs[startIndex..<startIndex+10]
        startIndex+=10
        
        components.queryItems = [URLQueryItem(name: "uuids", value: uuids.joined(separator: ","))]
        
        var newArticles = [Article]()
        try await newArticles = helper(components: components, parseUUIDs: false)
        
        // add the new articles we find to our existing articles
        articles += newArticles
        
        return articles
    }
}


    

