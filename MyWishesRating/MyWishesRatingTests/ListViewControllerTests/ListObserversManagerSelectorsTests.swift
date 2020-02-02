//
//  ListObserversManagerSelectorsTests.swift
//  MyWishesRatingTests
//
//  Created by Rost on 02.02.2020.
//  Copyright © 2020 Rost Gress. All rights reserved.
//

import XCTest
@testable import MyWishesRating

class ListObserversManagerSelectorsTests: XCTestCase {
    var observersManager: ListObserversManager!
    
    
    /// ---> Function for set test view controller <--- ///
    override func setUp() {
        observersManager    = ListObserversManager()
    }

    
    /// ---> Function for destruct data <--- ///
    override func tearDown() {
        observersManager = nil
        
        super.tearDown()
    }

    
    /// --->  Function for test exists selectors after loading  <--- ///
    func testExistsSelectors() {
        XCTAssertTrue(observersManager.responds(to: #selector(ListObserversManager.addObservers)),
                      "Selector addObservers is absent in ListObserversManager.")
        
        XCTAssertTrue(observersManager.responds(to: #selector(ListObserversManager.removeObservers)),
                      "Selector addObservers is absent in ListObserversManager.")
    }
}
