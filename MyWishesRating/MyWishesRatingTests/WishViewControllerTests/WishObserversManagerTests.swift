//
//  WishObserversManagerTests.swift
//  MyWishesRatingTests
//
//  Created by Rost on 02.02.2020.
//  Copyright © 2020 Rost Gress. All rights reserved.
//

import XCTest
@testable import MyWishesRating

class WishObserversManagerTests: XCTestCase {
    var observersManager: WishObserversManager!
    
    
    /// ---> Function for set test view controller <--- ///
    override func setUp() {
        observersManager = WishObserversManager()
    }

    
    /// ---> Function for destruct data <--- ///
    override func tearDown() {
        observersManager = nil
        
        super.tearDown()
    }

    
    /// --->  Function for test exists selectors after loading  <--- ///
    func testExistsSelectors() {
        XCTAssertTrue(observersManager.responds(to: #selector(WishObserversManager.addObservers)),
                      "Selector addObservers is absent.")

        XCTAssertTrue(observersManager.responds(to: #selector(WishObserversManager.removeObservers)),
                      "Selector removeObservers is absent.")
    }
}

