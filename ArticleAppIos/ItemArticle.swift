//
//  ItemArticle.swift
//  ArticleAppIos
//
//  Created by WDT on 08/07/24.
//

import SwiftUI

struct ItemArticle: View {
    var article: Article
    @State var selection: Int? = nil
    
    var body: some View {
        NavigationLink(destination: ArticleDetailView(article: article)) {
            HStack {
                AsyncImage(url: URL(string: "\(article.imageSource)")) { image in
                    image.resizable()
                } placeholder: {
                    Color.gray
                }
                .frame(width: 80.0, height: 80.0)
                .clipShape(.rect(cornerRadius: 15))
                VStack(
                    alignment: .leading, content: {
                        Text("Author: \(article.author)")
                            .font(.subheadline)
                            .padding(EdgeInsets(top: 0.0, leading: 10.0, bottom: 0, trailing: 0)
                            )
                        Text("\(article.title)")
                            .font(Font.headline)
                            .padding(EdgeInsets(top: 0.0, leading: 10.0, bottom: 0, trailing: 0)
                            ).truncationMode(/*@START_MENU_TOKEN@*/.tail/*@END_MENU_TOKEN@*/)
                            .lineLimit(1)
                        Text("\(article.content)")
                            .font(.system(size: 15))
                            .padding(EdgeInsets(top: 0.0, leading: 10.0, bottom: 0, trailing: 0)
                            ).truncationMode(/*@START_MENU_TOKEN@*/.tail/*@END_MENU_TOKEN@*/)
                            .lineLimit(3)

                        HStack {
                            Text("\(article.createdAt)")
                                .font(.system(size: 15))
                                .padding(EdgeInsets(top: 0.0, leading: 10.0, bottom: 0, trailing: 0)
                                )
                            Text("Like: \(article.reactionCount)")
                                .font(Font.headline)
                                .padding(EdgeInsets(top: 0.0, leading: 10.0, bottom: 0, trailing: 0)
                                )

                        }
                    }
                )
            }
            
        }
        
    }
}

#Preview {
    ContentView()
}
