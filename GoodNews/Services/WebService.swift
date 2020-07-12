//
//  WebService.swift
//  GoodNews
//
//  Created by Awis Alkarni on 12/07/2020.
//  Copyright © 2020 Awislabs. All rights reserved.
//

import Foundation

class WebService {
    
    func getArticles(url: URL, completion: @escaping ([Article]?) -> ()) {
        
        URLSession.shared.dataTask(with: url) { data, response, error in
            
            if let error = error {
                print(error.localizedDescription)
                completion(nil)
            } else if let data = data {
                
                let decoder = JSONDecoder()
            
                let articleList = try? decoder.decode(ArticleList.self, from: data)
                
                if let articleList = articleList {
                    completion(articleList.articles)
                }
                print(articleList?.articles)
            
                
            }
        }.resume()
    }

}
