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
        NavigationView {
            List {
                ForEach (newsStreamViewModel.articles) { article in
                    NavigationLink {
                        ArticleDetail(article: article)
                    } label: {
                        // TODO: move this into it's own view
                        VStack {
                            if let imageURL = article.squareImageURL {
                                AsyncImage(url: URL(string: imageURL))
                            }
                            
                            Text(article.title)
                            Spacer()
                            Text(article.publisher)
                            .font(.caption2)
                            Spacer()
                        }
                    }
                }
                
                ProgressView()
                .onAppear {
                    newsStreamViewModel.fetchNextPage()
                }
            }.navigationBarTitle("Articles")
                .refreshable {
                    newsStreamViewModel.refresh()
                }
        }
    }
}

struct NewsStream_Previews: PreviewProvider {
    static var previews: some View {
        NewsStream(newsStreamViewModel: NewsStreamViewModel(articleManager: ArticleManager()))
    }
}
    
