//
//  Article.swift
//  GoodNews
//
//  Created by Awis Alkarni on 12/07/2020.
//  Copyright © 2020 Awislabs. All rights reserved.
//

import Foundation

struct ArticleList: Decodable {
    let articles: [Article]
}

struct Article: Decodable {
    let title: String
    let description: String?
    let author: String?
}
