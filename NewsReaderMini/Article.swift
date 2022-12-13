//
//  Article.swift
//  NewsReaderMini
//
//  Created by Chad Newbry on 12/12/22.
//

import Foundation

struct MainImage: Codable {
    var original_url: String
}

struct Article: Identifiable, Codable {
    
    var id: String
    var title: String
    var publisher: String
    
//    var main_image: MainImage
    
//    enum CodingKeys: String {
//        case id = "article_id"
//    }
    
    
//    var uuid: String
//    var main_image: String

    
    
    // now you define the coding keys
//    enum CodingKeys: String {
//        case id = "article_id"
////        case publisher, title
//    }
    
    init() {
        self.id = "00000"
        self.publisher = "Argentina Daily News"
        self.title = "Messi Advances in the World Cup"
    }
    
    init(from dict: [String: Any]) {
        
        guard let id = dict["article_id"] as? String else {
            preconditionFailure("unable to read article_id from dict")
        }
        
        guard let title = dict["title"] as? String else {
            preconditionFailure("unable to read title from dict")
        }
        
        guard let publisher = dict["publisher"] as? String else {
            preconditionFailure("Unable to read publisher from dict")
        }
        
        
        
        self.id = id
        self.title = title
        self.publisher = publisher
    }
}
