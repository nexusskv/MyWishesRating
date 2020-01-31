//
//  ObserversManager.swift
//  MyWishesRating
//
//  Created by Rost on 30.01.2020.
//  Copyright © 2020 Rost Gress. All rights reserved.
//

import Foundation
import UIKit


class ObserversManager {

    /// ---> Function for add observers  <--- ///
    func addObservers(_ view: ListViewController) {
        let defaultCenter = NotificationCenter.default
        
        defaultCenter.addObserver(view,
                                  selector: #selector(view.reloadList),
                                  name: reloadListName,
                                  object: nil)
    }
    
    
    /// ---> Function for remove observers <--- ///
    func removeObservers(_ view: ListViewController) {
        NotificationCenter.default.removeObserver(view)
    }
}
