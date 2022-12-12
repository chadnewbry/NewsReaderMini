//
//  NewStream.swift
//  NewsReaderMini
//
//  Created by Chad Newbry on 12/12/22.
//

import SwiftUI

struct NewsStream: View {
    
    var newsStreamViewModel: NewsStreamViewModel
    
    var body: some View {
        List {
//            ForEach (newsStreamViewModel.articles) { article in
//                Text(article.title)
//            }
        }
    }
}

struct NewsStream_Previews: PreviewProvider {
    static var previews: some View {
        NewsStream(newsStreamViewModel: NewsStreamViewModel(articleManager: ArticleManager()))
    }
}
