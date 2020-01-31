//
//  WishObject+Decodable.swift
//  MyWishesRating
//
//  Created by Rost on 31.01.2020.
//  Copyright © 2020 Rost Gress. All rights reserved.
//

import Foundation


extension WishObject: Decodable {
    
    /// ---> Function for decode all values from json container <--- ///
    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: WishCodingKeys.self)
        if let value = try values.decodeIfPresent(Int.self, forKey: .wishId) {
            wishId = value
        }
        
        if let value = try values.decodeIfPresent(String.self, forKey: .name) {
            name = value
        }
        
        if let value = try values.decodeIfPresent(String.self, forKey: .author) {
            author = value
        }
        
        if let value = try values.decodeIfPresent(Int.self, forKey: .year) {
            year = value
        }
        
        if let value = try values.decodeIfPresent(String.self, forKey: .image) {
            image = value
        }
        
        if let value = try values.decodeIfPresent(String.self, forKey: .shop) {
            shop = value
        }
        
        rating = Int.random(in: 1 ..< 10)
    }
}
