//
//  Article.swift
//  NewsReaderMini
//
//  Created by Chad Newbry on 12/12/22.
//

import Foundation



struct Article: Codable {
    
    var article_id: String
        
//    enum CodingKeys: String {
//        case id = "article_id"
//    }
    
    
//    var uuid: String
//    var main_image: String
//    var publisher: String
//    var title: String
    
    // now you define the coding keys
//    enum CodingKeys: String {
//        case id = "article_id"
////        case publisher, title
//    }
}

extension Article: Identifiable {
    var id: String { return article_id}
}

