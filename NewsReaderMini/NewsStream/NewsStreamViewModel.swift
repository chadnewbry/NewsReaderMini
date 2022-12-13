//
//  NewsStreamViewModel.swift
//  NewsReaderMini
//
//  Created by Chad Newbry on 12/12/22.
//

import Foundation

@MainActor
final class NewsStreamViewModel: ObservableObject {
    
    private var articleManager: ArticleManager
    
    @Published var articles: [Article] = []

    init(articleManager: ArticleManager) {
        self.articleManager = articleManager
        refresh()
    }
    
    // MARK: Public Methods
    
    func refresh() {
        Task {
            do {
                articles = try await articleManager.refresh()
            } catch {
                
            }
        }
    }
    
    func fetchNextPage() {
        Task {
            do {
                articles = try await articleManager.fetchNextPage()
            } catch {
                
            }
        }
    }
    
    
}
