//
//  ListDataManagerSelectorsTests.swift
//  MyWishesRatingTests
//
//  Created by Rost on 02.02.2020.
//  Copyright © 2020 Rost Gress. All rights reserved.
//

import XCTest
@testable import MyWishesRating

class ListDataManagerSelectorsTests: XCTestCase {
    
    
    /// --->  Function for test exists selectors after loading  <--- ///
    func testExistsSelectors() {
        XCTAssertTrue(ListDataManager.responds(to: #selector(ListDataManager.makeDataSource)),
                      "Selector makeDataSource is absent.")
        
        XCTAssertTrue(ListDataManager.responds(to: #selector(ListDataManager.handleAllList)),
                      "Selector handleAllList is absent.")
        
        XCTAssertTrue(ListDataManager.responds(to: #selector(ListDataManager.handleWishes)),
                      "Selector handleWishes is absent.")

    }
}
