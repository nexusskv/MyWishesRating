//
//  WishViewController+Selectors.swift
//  MyWishesRating
//
//  Created by Rost on 01.02.2020.
//  Copyright © 2020 Rost Gress. All rights reserved.
//

import Foundation
import UIKit


extension WishViewController {
         
    
    /// ---> Selector for changeRating notification  <--- ///
    @objc func changeRating(_ sender: NSNotification) {
        if let info = sender.userInfo as? [String : AnyObject] {
            viewModel.ratingDidChanged(info)
        }
    }
    
    
    @objc func changeRatingLimit(_ sender: NSNotification) {
        if let info = sender.userInfo as? [String : AnyObject] {
            viewModel.ratingReceivedLimit(info , view: self)
        }
    }
    
    
    @objc func refreshTable(_ sender: NSNotification) {
        viewModel.refreshTable(self)
    }
    
    
    @objc func sortViewStateNeedChange(_ sender: NSNotification) {
        viewModel.changeSortViewVisibility(self)
    }
    
    
    @objc func sortTypeSelected(_ sender: NSNotification) {
        if let info = sender.userInfo as? [String : AnyObject] {
            sortManager.sortByType(info, view: self)
        }
    }
}
