//
//  WishObserversManager.swift
//  MyWishesRating
//
//  Created by Rost on 01.02.2020.
//  Copyright © 2020 Rost Gress. All rights reserved.
//

import Foundation
import UIKit


class WishObserversManager: NSObject {
    
    
    /// ---> Function for add observers  <--- ///
    @objc func addObservers(_ view: WishViewController) {
        let defaultCenter = NotificationCenter.default
        
        defaultCenter.addObserver(view,
                                  selector: #selector(view.changeRating),
                                  name: changeRatingName,
                                  object: nil)
        
        defaultCenter.addObserver(view,
                                  selector: #selector(view.changeRatingLimit),
                                  name: changeRatingLimitName,
                                  object: nil)
        
        defaultCenter.addObserver(view,
                                  selector: #selector(view.refreshTable),
                                  name: tableNeedRefreshName,
                                  object: nil)
        
        defaultCenter.addObserver(view,
                                  selector: #selector(view.sortViewStateNeedChange),
                                  name: sortItemTappedName,
                                  object: nil)
        
        defaultCenter.addObserver(view,
                                  selector: #selector(view.sortTypeSelected),
                                  name: sortTypeSelectedName,
                                  object: nil)
    }
    
    
    /// ---> Function for remove observers <--- ///
    @objc func removeObservers(_ view: WishViewController) {
        NotificationCenter.default.removeObserver(view)
    }
}
