//
//  DataContainer.swift
//  MyWishesRating
//
//  Created by Rost on 30.01.2020.
//  Copyright © 2020 Rost Gress. All rights reserved.
//

import Foundation


class DataContainer {
    private init() { }
    
    static let shared = DataContainer()
    
    var listArray: [ListObject]?                        // All list objects
    var booksArray: [WishObject]?                       // All books objects
    var carsArray: [WishObject]?                        // All cars objects
    var pcgamesArray: [WishObject]?                     // All games objects
    
    var selectedType: WishesTypes?                      // Selected type for wish view
    
    var selectedSortType: WishesSortTypes = .none       // Selected type of sort in sort view
}
