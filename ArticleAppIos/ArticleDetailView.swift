//
//  ArticleDetail.swift
//  ArticleAppIos
//
//  Created by WDT on 08/07/24.
//

import SwiftUI

struct ArticleDetailView: View {
    var article: Article
    
    var body: some View {
        NavigationView {
            ScrollView {
                VStack {
                    Image("\(article.imageSource)")
                        .resizable()
                        .frame(height: 200.0)
                    Text("\(article.title)")
                        .font(.title)
                        .padding(EdgeInsets(top: 0, leading: 0, bottom: 10, trailing: 0))

                    Text("\(article.content)")
                        .font(.system(size: 20))
                }
                .padding(25)
                .navigationBarTitleDisplayMode(.inline)
                .toolbar {
                    ToolbarItem(placement: .principal) {
                        Text("(\(article.title)")
                            .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                    }
                }
                .toolbarBackground(.visible, for: .navigationBar)}
        }
    }
}

#Preview {
    ContentView()
}
