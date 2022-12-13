//
//  NewStream.swift
//  NewsReaderMini
//
//  Created by Chad Newbry on 12/12/22.
//

import SwiftUI

struct NewsStream: View {
    
    @StateObject var newsStreamViewModel: NewsStreamViewModel
    
    var body: some View {
        List {
            ForEach (newsStreamViewModel.articles) { article in
//                Text(article.id)
//                Text(article.article_id)
                Text(article.title)
                Text(article.publisher)
            }
        }
    }
}

struct NewsStream_Previews: PreviewProvider {
    static var previews: some View {
        NewsStream(newsStreamViewModel: NewsStreamViewModel(articleManager: ArticleManager()))
    }
}
