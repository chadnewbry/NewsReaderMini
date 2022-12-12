//
//  ArticleDetail.swift
//  NewsReaderMini
//
//  Created by Chad Newbry on 12/12/22.
//

import SwiftUI

struct ArticleDetail: View {
    
    public private (set) var article: Article
    
    var body: some View {
        VStack {
//            Text(article.title)
//            Text(article.publisher)
        }
    }
}

struct ArticleDetail_Previews: PreviewProvider {
    static var previews: some View {
        ArticleDetail(article: Article(article_id: "0")) // Article(id: "0", publisher: "Yahoo Sports", title: "News Headline Goes here"))
    }
}
