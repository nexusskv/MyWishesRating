//
//  ListObject+Decodable.swift
//  MyWishesRating
//
//  Created by Rost on 31.01.2020.
//  Copyright © 2020 Rost Gress. All rights reserved.
//

import Foundation


extension ListObject: Decodable {
    
    
    /// ---> Function for decode all values from json container <--- ///
    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: ListCodingKeys.self)
        if let value = try values.decodeIfPresent(Int.self, forKey: .listId) {
            if let type = WishesTypes(rawValue: value) {
                listId = type
            }
        }
        
        if let value = try values.decodeIfPresent(String.self, forKey: .name) {
            name = value
        }
        
        if let value = try values.decodeIfPresent(String.self, forKey: .image) {
            image = value
        }

    }
}
