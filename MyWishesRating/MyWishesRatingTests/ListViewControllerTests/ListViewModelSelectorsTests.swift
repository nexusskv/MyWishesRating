//
//  ListViewModelSelectorsTests.swift
//  MyWishesRatingTests
//
//  Created by Rost on 02.02.2020.
//  Copyright © 2020 Rost Gress. All rights reserved.
//

import XCTest
@testable import MyWishesRating

class ListViewModelSelectorsTests: XCTestCase {
    var viewModel: ListViewModel!
    
    
    /// ---> Function for set test view controller <--- ///
    override func setUp() {
        viewModel = ListViewModel()
    }

    
    /// ---> Function for destruct data <--- ///
    override func tearDown() {
        viewModel = nil
        
        super.tearDown()
    }

    
    /// --->  Function for test exists selectors after loading  <--- ///
    func testExistsSelectors() {
        XCTAssertTrue(viewModel.responds(to: #selector(ListViewModel.setupUI)),
                      "Selector setupUI is absent.")
        
        XCTAssertTrue(viewModel.responds(to: #selector(ListViewModel.reloadTable)),
                      "Selector reloadTable is absent.")
        
        XCTAssertTrue(viewModel.responds(to: #selector(ListViewModel.makeCell)),
                      "Selector makeCell is absent.")

        XCTAssertTrue(viewModel.responds(to: #selector(ListViewModel.makeHeight)),
                      "Selector makeHeight is absent.")
        
        XCTAssertTrue(viewModel.responds(to: #selector(ListViewModel.makeRowsCount)),
                      "Selector makeRowsCount is absent.")
        
        XCTAssertTrue(viewModel.responds(to: #selector(ListViewModel.presentDetails)),
                      "Selector presentDetails is absent.")
    }
}
