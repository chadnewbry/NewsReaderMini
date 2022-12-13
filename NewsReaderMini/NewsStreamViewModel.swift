//
//  NewsStreamViewModel.swift
//  NewsReaderMini
//
//  Created by Chad Newbry on 12/12/22.
//

import Foundation

final class NewsStreamViewModel: ObservableObject {
    
    var articleManager: ArticleManager
    
    @Published var articles: [Article] = []

    init(articleManager: ArticleManager) {
        self.articleManager = articleManager
        articles = articleManager.articles
        
        Task {
            do {
                articles = try await articleManager.refresh()
            } catch {
                
            }
        }
    }
}
