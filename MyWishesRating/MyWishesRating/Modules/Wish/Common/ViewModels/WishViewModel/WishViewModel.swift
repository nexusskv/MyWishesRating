//
//  WishViewModel.swift
//  MyWishesRating
//
//  Created by Rost on 31.01.2020.
//  Copyright © 2020 Rost Gress. All rights reserved.
//

import Foundation
import UIKit


class WishViewModel {
    var dataArray: [WishObject]!
    var randomTimer: Timer!
    var isRandomRatingStarted = false
    
    
    /// ---> Function for UI customisations  <--- ///
    func setupUI(_ view: WishViewController) {
        let buttonRect = CGRect(x: 0.0, y: 2.0, width: 40.0, height: 40.0)

        let randomItem = UIMaker.makeBarItem(buttonRect,
                                             image: "random_button",
                                             target: self,
                                             selector:  #selector(randomItemTapped))

        let sortItem = UIMaker.makeBarItem(buttonRect,
                                           image: "sort_button",
                                           target: self,
                                           selector:  #selector(sortItemTapped))
 
        view.navigationItem.rightBarButtonItems = [sortItem, randomItem]
        
        let bgView = UIView(frame: .zero)
        bgView.backgroundColor = .white
        view.dataTable.backgroundView  = bgView
        view.dataTable.backgroundColor = .white

        view.dataTable.tableFooterView = UIView()
    }
    
    
    func changeSortViewVisibility(_ view: WishViewController) {
        if let manager = view.sortManager {
            manager.displaySortView(view)
        }
    }
}
