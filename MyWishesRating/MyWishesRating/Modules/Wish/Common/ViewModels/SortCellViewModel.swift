//
//  SortCellViewModel.swift
//  MyWishesRating
//
//  Created by Rost on 01.02.2020.
//  Copyright © 2020 Rost Gress. All rights reserved.
//

import Foundation
import UIKit


class SortCellViewModel {

    /// ---> Setter for values on UI <--- ///
    func setValues(_ cell: SortCell, value: String, index: Int, sort: Int) {
        cell.nameLabel.text     = value
        
        cell.sortButton.setBackgroundImage(UIImage(named: "no_checkmark_button"),
                                           for: .normal)
        
        if index == sort {
            cell.sortButton.setBackgroundImage(UIImage(named: "checkmark_button"),
                                               for: .normal)
        }

        cell.sortButton.tag      = index
    }
    
    
    /// ---> Function for pass selected index of row to viewController <--- ///
    func sortTypeSelected(_ : Int) {
        NotificationCenter.default.post(name: sortTypeSelectedName,
                                        object: nil,
                                        userInfo: ["index": index])
    }
}
