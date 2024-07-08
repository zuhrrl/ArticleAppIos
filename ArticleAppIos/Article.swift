//
//  Article.swift
//  ArticleAppIos
//
//  Created by WDT on 08/07/24.
//

import Foundation

struct Article: Identifiable {
    let id = UUID()
    let title: String
    let imageSource: String
    let content: String
    let author: String
    let authorImage: String
    let createdAt: String
    let reactionCount: String
    
}
