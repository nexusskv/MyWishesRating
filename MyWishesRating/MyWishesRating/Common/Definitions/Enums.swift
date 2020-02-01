//
//  Enums.swift
//  MyWishesRating
//
//  Created by Rost on 30.01.2020.
//  Copyright © 2020 Rost Gress. All rights reserved.
//

import Foundation


/// ---> Types of wishes  <--- ///
enum WishesTypes: Int {
    case books = 0
    case cars
    case pcgames
}


enum WishesSortTypes: Int {
    case none     = 0
    case nameAsc
    case nameDesc
    case authorAsc
    case authorDesc
    case yearAsc
    case yearDesc
    case costAsc
    case costDesc
    case shopAsc
    case shopDesc
    case ratingAsc
    case ratingDesc
}
