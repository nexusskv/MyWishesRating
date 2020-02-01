//
//  WishViewModel+Rating.swift
//  MyWishesRating
//
//  Created by Rost on 01.02.2020.
//  Copyright © 2020 Rost Gress. All rights reserved.
//

import Foundation
import UIKit


extension WishViewModel {
    
    
    func ratingDidChanged(_ values: [String: AnyObject]) {
        if let index = values["index"] as? Int {
            var object = dataArray[index]
            
            if let direction = values["direction"] as? String {
                if direction == rateUp {
                    object.rating += 0.5
                } else {
                    object.rating -= 0.5
                }

                dataArray[index] = object
                
                sortDataAndSendRefresh()
            }
        }
    }
    
    
    func ratingReceivedLimit(_ values: [String: AnyObject], view: WishViewController) {
        if let direction = values["limit"] as? String {
            if direction == rateUp {
                AlertPresenter.showAlert(view,
                                         message: "You set a max rating for this wish.")
            } else {
                AlertPresenter.showAlert(view,
                                         message: "You set a min rating for this wish.")
            }
        }
    }
    
    
    func sortDataAndSendRefresh() {
        dataArray = dataArray.sorted(by: { $0.rating > $1.rating })
        
        NotificationCenter.default.post(name: tableNeedRefreshName, object: nil)
    }
}
