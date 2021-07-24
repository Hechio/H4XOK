//
//  PostData.swift
//  H4XOK
//
//  Created by Joel Personal on 8/23/20.
//  Copyright © 2020 Steve Hechio. All rights reserved.
//

import Foundation

struct Results: Decodable {
    let hits: [Post]
}
struct Post: Decodable, Identifiable {
    var id: String {
        return objectID
    }
    let objectID: String
    let points: Int
    let title: String
    let url: String?
    
}
