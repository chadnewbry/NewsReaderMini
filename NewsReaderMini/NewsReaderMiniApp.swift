//
//  NewsReaderMiniApp.swift
//  NewsReaderMini
//
//  Created by Chad Newbry on 12/12/22.
//

import SwiftUI

@main
struct NewsReaderMiniApp: App {
    
    private var articleManager = ArticleManager()
    
    var body: some Scene {
        WindowGroup {
            NewsStream(newsStreamViewModel: NewsStreamViewModel(articleManager: articleManager))
                
        }
    }
}
