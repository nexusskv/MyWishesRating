//
//  WishSortsManagerTests.swift
//  MyWishesRatingTests
//
//  Created by Rost on 02.02.2020.
//  Copyright © 2020 Rost Gress. All rights reserved.
//

import XCTest
@testable import MyWishesRating

class WishSortsManagerTests: XCTestCase {
    var sortManager: WishSortManager!
    
    
    /// ---> Function for set test view controller <--- ///
    override func setUp() {
        sortManager = WishSortManager()
    }

    
    /// ---> Function for destruct data <--- ///
    override func tearDown() {
        sortManager = nil
        
        super.tearDown()
    }

    
    /// --->  Function for test exists selectors after loading  <--- ///
    func testExistsSelectors() {
        XCTAssertTrue(sortManager.responds(to: #selector(WishSortManager.displaySortView)),
                      "Selector displaySortView is absent.")

        XCTAssertTrue(sortManager.responds(to: #selector(WishSortManager.sortByType)),
                      "Selector sortByType is absent.")
        
        XCTAssertTrue(sortManager.responds(to: #selector(WishSortManager.sortActionHandler)),
                      "Selector sortActionHandler is absent.")
        
        XCTAssertTrue(sortManager.responds(to: #selector(WishSortManager.sortWishes)),
                      "Selector sortWishes is absent.")
    }
}
