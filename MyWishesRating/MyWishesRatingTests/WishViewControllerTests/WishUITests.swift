//
//  WishUITests.swift
//  MyWishesRatingTests
//
//  Created by Rost on 01.02.2020.
//  Copyright © 2020 Rost Gress. All rights reserved.
//

import XCTest
@testable import MyWishesRating

class WishUITests: XCTestCase {
    var viewController: WishViewController!
    
    
    /// ---> Function for set test view controller <--- ///
    override func setUp() {
        let storyboard = UIStoryboard(name: "Wish", bundle: nil)
        viewController = storyboard.instantiateViewController(withIdentifier: "WishViewController") as? WishViewController
    }

    
    /// ---> Function for destruct data <--- ///
    override func tearDown() {
        viewController = nil
        
        super.tearDown()
    }

    
    /// --->  Function for test exists views after loading  <--- ///
    func testViewsAfterLoading() {
        XCTAssertNil(viewController.dataTable,
                     "Before loading data table view should be nil.")
        
        XCTAssertNil(viewController.sortView,
                     "Before loading data sort view should be nil.")
        
        XCTAssertNil(viewController.viewModel,
                     "Before loading view model should be nil.")
        
        XCTAssertNil(viewController.sortManager,
                     "Before loading sort manager should be nil.")
        
        XCTAssertNil(viewController.observersManager,
                     "Before loading observers manager should be nil.")
        
        
        let _ = viewController.view

        XCTAssertNotNil(viewController.dataTable,
                        "Data table view should be set.")
        
        XCTAssertNotNil(viewController.sortView,
                        "Sort view should be set.")
        
        XCTAssertNotNil(viewController.viewModel,
                        "View model should be set.")
        
        XCTAssertNotNil(viewController.sortManager,
                        "Sort manager should be set.")
        
        XCTAssertNotNil(viewController.observersManager,
                        "Observers manager should be set.")
    }

    
    /// --->  Function for check conform table view to datasource protocol  <--- ///
    func testConformsToTableViewDataSource () {
        XCTAssert(viewController.conforms(to: UITableViewDataSource.self),
                  "Table view not conform UITableViewDataSource.")
        
        XCTAssertTrue(viewController.responds(to: #selector(viewController.tableView(_:cellForRowAt:))),
                      "Table view not respond to cellForRowAt: selector.")
        
        XCTAssertTrue(viewController.responds(to: #selector(viewController.tableView(_:numberOfRowsInSection:))),
                      "Table view not respond to numberOfRowsInSection: selector.")
    }
    
    
    /// --->  Function for check conform table view to delegate protocol  <--- ///
    func testConformsToTableViewDelegate() {
        XCTAssert(viewController.conforms(to: UITableViewDelegate.self),
                  "Table view not conform UITableViewDelegate.")
        
        XCTAssertTrue(viewController.responds(to: #selector(viewController.tableView(_:heightForRowAt:))),
                      "Table view not respond to heightForRowAt: selector.")
    }

}

