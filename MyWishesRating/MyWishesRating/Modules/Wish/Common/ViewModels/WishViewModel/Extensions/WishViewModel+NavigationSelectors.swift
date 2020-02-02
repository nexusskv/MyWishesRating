//
//  WishViewModel+NavigationSelectors.swift
//  MyWishesRating
//
//  Created by Rost on 01.02.2020.
//  Copyright © 2020 Rost Gress. All rights reserved.
//

import Foundation
import UIKit


extension WishViewModel {
    
    
    /// ---> Selector for sortItem in the navigationBar <--- ///
    @objc func sortItemTapped(_ sender: UIBarButtonItem) {
        isRandomRatingStarted = false
        randomTimer.invalidate()
        
        NotificationCenter.default.post(name: sortItemTappedName, object: nil)
    }
    
    
    /// ---> Selector for randomItem in the navigationBar <--- ///
    @objc func randomItemTapped(_ sender: UIBarButtonItem) {
        if !isRandomRatingStarted {
            isRandomRatingStarted = true
        } else {
            isRandomRatingStarted = false
        }

        if isRandomRatingStarted {
            randomTimer = Timer.scheduledTimer(withTimeInterval: 5.0, repeats: true) { [weak self] timer in
                guard let strongSelf = self else {
                    return
                }
                
                for count in 0 ..< strongSelf.dataArray.count {
                    var object = strongSelf.dataArray[count]
                    
                    object.rating = Float.random(in: 1 ..< 10)
                    
                    strongSelf.dataArray[count] = object
                }
                
                strongSelf.sortDataAndSendRefresh()
            }
        } else {
            randomTimer.invalidate()
        }
        
        DataContainer.shared.selectedSortType = .ratingDesc
    }
}
