//
//  RatingView+Setters.swift
//  MyWishesRating
//
//  Created by Rost on 31.01.2020.
//  Copyright © 2020 Rost Gress. All rights reserved.
//

import Foundation
import UIKit


extension RatingView {
    
    
    /// ---> Function for set max rating <--- ///
    func setMaxRating(_ value: Int) {
        if maxAllowedRating == Float(maxRating) {
            maxAllowedRating = Float(maxRating)
        }
        
        maxRating = value

        for i in 0 ..< starViews.count {
            let imageView = starViews[i]
            
            imageView.removeFromSuperview()
        }
        
        starViews.removeAll()

        setupView()

        setNeedsLayout()
        
        refreshStars()
    }

    
    /// ---> Function for set rating <--- ///
    func setRating(_ value: Float) {
        rating = value
        
        refreshStars()
    }
}
