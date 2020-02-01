//
//  WishCellViewModel.swift
//  MyWishesRating
//
//  Created by Rost on 31.01.2020.
//  Copyright © 2020 Rost Gress. All rights reserved.
//

import Foundation
import UIKit


class WishCellViewModel {
    
    
    /// ---> Setter for values on UI <--- ///
    func setValues(_ cell: WishCell, object: WishObject, index: IndexPath) {
        cell.wishImageView.setUrl(object.image)
        
        cell.nameLabel.text         = object.name
        
        cell.authorLabel.text       = object.author
        
        cell.yearLabel.text         = "\(object.year)" + " year"
        
        cell.shopCostLabel.text     = object.shop + " - " + "\(object.cost)" + "$"
        
        cell.upRatingButton.tag     = index.row
        cell.downRatingButton.tag   = index.row
        
        cell.ratingView.setMaxRating(Int(topRate))
        cell.ratingView.setRating(Float(object.rating))
    }
    
    
    func sendChangeRating(_ rating: Float, isUp: Bool, index: Int) {
        var direction = rateDown
        
        if isUp {
            direction = rateUp
            
            if rating < topRate {
                NotificationCenter.default.post(name: changeRatingName,
                                                object: nil,
                                                userInfo: ["direction": direction,
                                                           "index": index])
            } else {
                NotificationCenter.default.post(name: changeRatingLimitName,
                                                object: nil,
                                                userInfo: ["limit": direction])
            }
        } else {
            if rating > lowRate {
                NotificationCenter.default.post(name: changeRatingName,
                                                object: nil,
                                                userInfo: ["direction": direction,
                                                           "index": index])
            } else {
                NotificationCenter.default.post(name: changeRatingLimitName,
                                                object: nil,
                                                userInfo: ["limit": direction])
            }
        }
    }
}
