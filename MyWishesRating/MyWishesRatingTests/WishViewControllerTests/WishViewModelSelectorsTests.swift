//
//  WishViewModelSelectorsTests.swift
//  MyWishesRatingTests
//
//  Created by Rost on 02.02.2020.
//  Copyright © 2020 Rost Gress. All rights reserved.
//

import XCTest
@testable import MyWishesRating

class WishViewModelSelectorsTests: XCTestCase {
    var viewModel: WishViewModel!
    
    
    /// ---> Function for set test view controller <--- ///
    override func setUp() {
        viewModel = WishViewModel()
    }

    
    /// ---> Function for destruct data <--- ///
    override func tearDown() {
        viewModel = nil
        
        super.tearDown()
    }

    
    /// --->  Function for test exists selectors after loading  <--- ///
    func testExistsSelectors() {
        XCTAssertTrue(viewModel.responds(to: #selector(WishViewModel.setupUI)),
                      "Selector setupUI is absent.")
        
        XCTAssertTrue(viewModel.responds(to: #selector(WishViewModel.changeSortViewVisibility)),
                      "Selector changeSortViewVisibility is absent.")
        
        

    }
    
    
    /// --->  Function for test exists selectors after loading  <--- ///
    func testNavigationSelectors() {
        XCTAssertTrue(viewModel.responds(to: #selector(WishViewModel.sortItemTapped)),
                      "Selector sortItemTapped is absent.")
        
        XCTAssertTrue(viewModel.responds(to: #selector(WishViewModel.randomItemTapped)),
                      "Selector randomItemTapped is absent.")
    }
    
    
    /// --->  Function for test exists selectors after loading  <--- ///
    func testTableSelectors() {
        XCTAssertTrue(viewModel.responds(to: #selector(WishViewModel.reloadTable)),
                      "Selector reloadTable is absent.")
        
        XCTAssertTrue(viewModel.responds(to: #selector(WishViewModel.refreshTable)),
                      "Selector refreshTable is absent.")
        
        XCTAssertTrue(viewModel.responds(to: #selector(WishViewModel.makeCell)),
                      "Selector makeCell is absent.")
        
        XCTAssertTrue(viewModel.responds(to: #selector(WishViewModel.makeHeight)),
                      "Selector makeHeight is absent.")
        
        XCTAssertTrue(viewModel.responds(to: #selector(WishViewModel.makeRowsCount)),
                      "Selector makeRowsCount is absent.")
    }
    
    
    /// --->  Function for test exists selectors after loading  <--- ///
    func testRatingSelectors() {
        XCTAssertTrue(viewModel.responds(to: #selector(WishViewModel.ratingDidChanged)),
                      "Selector ratingDidChanged is absent.")
        
        XCTAssertTrue(viewModel.responds(to: #selector(WishViewModel.ratingReceivedLimit)),
                      "Selector ratingReceivedLimit is absent.")
        
        XCTAssertTrue(viewModel.responds(to: #selector(WishViewModel.sortDataAndSendRefresh)),
                      "Selector ratingReceivedLimit is absent.")
    }
}
