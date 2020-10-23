//
//  PostData.swift
//  hackerNewsApp
//
//  Created by Rafael Freitas on 18/10/20.
//

import Foundation

struct Results: Codable {
    let hits:[Post]
}

struct Post: Codable, Identifiable {
    var id: String {
        return objectID
    }
    
    let objectID: String
    let points: Int
    let title: String
    let url: String?
}
