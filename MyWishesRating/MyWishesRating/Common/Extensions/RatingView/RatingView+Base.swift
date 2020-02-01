//
//  RatingView+Base.swift
//  MyWishesRating
//
//  Created by Rost on 31.01.2020.
//  Copyright © 2020 Rost Gress. All rights reserved.
//

import Foundation
import UIKit


extension RatingView {
    
    
    /// ---> Function for UI customisations  <--- ///
    func setupUI() {
        notSelectedStar     = UIImage(named: "not_selected_star")
        selectedStar        = UIImage(named: "selected_star")
        halfSelectedStar    = UIImage(named: "half_selected_star")
        maxRating           = defaultMaxRating
        midMargin           = Float(defaultMidMargin)
        leftMargin          = Float(defaultLeftMargin)
        rightMargin         = Float(defaultRightMargin)
        minStarSize         = defaultMinStarSize
        minAllowedRating    = Float(defaultMinAllowedRating)
        maxAllowedRating    = Float(defaultMaxAllowedRating)
        rating              = minAllowedRating

        setupView()
    }
    
    
    /// ---> Function for create all stars  <--- ///
    func setupView() {
        for _ in 0 ..< maxRating {
            let imageView = UIImageView()
            imageView.contentMode = .scaleAspectFit
            
            starViews.append(imageView)
            
            self.addSubview(imageView)
        }
        
        refreshStars()
    }
    
    
    /// ---> Function for refresh all stars  <--- ///
    func refreshStars() {
        for i in 0 ..< starViews.count {
            let imageView = starViews[i]
            if rating >= Float(i+1) {
                imageView.image = selectedStar
            } else if rating > Float(i) {
                imageView.image = halfSelectedStar
            } else {
                imageView.image = notSelectedStar
            }
        }
    }
}
