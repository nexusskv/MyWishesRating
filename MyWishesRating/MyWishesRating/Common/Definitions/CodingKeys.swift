//
//  CodingKeys.swift
//  MyWishesRating
//
//  Created by Rost on 31.01.2020.
//  Copyright © 2020 Rost Gress. All rights reserved.
//

import Foundation


/// ---> Coding keys for decoding values in the list object <--- ///
enum ListCodingKeys: String, CodingKey {
    case listId       = "id"
    case name
    case image

}


/// ---> Coding keys for decoding values in the wish object <--- ///
enum WishCodingKeys: String, CodingKey {
    case wishId       = "id"
    case name
    case author
    case year
    case image
    case cost
    case shop
}
