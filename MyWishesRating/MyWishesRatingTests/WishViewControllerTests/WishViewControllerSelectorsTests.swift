//
//  WishViewControllerSelectorsTests.swift
//  MyWishesRatingTests
//
//  Created by Rost on 01.02.2020.
//  Copyright © 2020 Rost Gress. All rights reserved.
//

import XCTest
@testable import MyWishesRating

class WishViewControllerSelectorsTests: XCTestCase {
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

    
    /// --->  Function for test exists selectors after loading  <--- ///
    func testExistsSelectors() {
        XCTAssertTrue(viewController.responds(to: #selector(WishViewController.changeRating)),
                      "Selector changeRating is absent.")
        
        XCTAssertTrue(viewController.responds(to: #selector(WishViewController.changeRatingLimit)),
                      "Selector changeRatingLimit is absent.")
        
        XCTAssertTrue(viewController.responds(to: #selector(WishViewController.refreshTable)),
                      "Selector refreshTable is absent.")
        
        XCTAssertTrue(viewController.responds(to: #selector(WishViewController.sortViewStateNeedChange)),
                      "Selector sortViewStateNeedChange is absent.")
        
        XCTAssertTrue(viewController.responds(to: #selector(WishViewController.sortTypeSelected)),
                      "Selector sortTypeSelected is absent.")
    }
}
