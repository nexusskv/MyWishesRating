//
//  RatingView.swift
//  MyWishesRating
//
//  Created by Rost on 31.01.2020.
//  Copyright © 2020 Rost Gress. All rights reserved.
//

import Foundation
import UIKit

let defaultMaxRating            = 10
let defaultLeftMargin           = 2
let defaultMidMargin            = 2
let defaultRightMargin          = 2
let defaultMinAllowedRating     = 1
let defaultMaxAllowedRating     = 10
let defaultMinStarSize          = CGSize(width: 10, height: 10)


class RatingView: UIView {
    var notSelectedStar: UIImage!
    var selectedStar: UIImage!
    var halfSelectedStar: UIImage!

    var maxRating: Int!
    var leftMargin: Float!
    var midMargin: Float!
    var rightMargin: Float!
    var minStarSize: CGSize!
    var rating: Float!
    var minAllowedRating: Float!
    var maxAllowedRating: Float!
    var starViews = [UIImageView]()

    
    /// ---> Constructor function <--- ///
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        
    }
    
    
    /// ---> Constructor function <--- ///
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        setupUI()
    }
    
    
    /// ---> View life cycle <--- ///
    override func awakeFromNib() {
        super.awakeFromNib()
        
        setupUI()
    }

    
    /// ---> Function for layout all subviews <--- ///
    override func layoutSubviews() {
        super.layoutSubviews()
        
        let middle: CGFloat    = CGFloat(midMargin) * CGFloat(starViews.count)
        let left: CGFloat      = CGFloat(leftMargin * 2.0)
        let width: CGFloat     = CGFloat(self.frame.size.width)
        let desiredImageWidth: CGFloat = (width - left - middle) / CGFloat(starViews.count)
        
        let imageWidth = max(minStarSize.width, CGFloat(desiredImageWidth))
        let imageHeight = max(minStarSize.height, self.frame.size.height)
        
        for i in 0 ..< starViews.count {
            let imageView = starViews[i]
            let xValue = CGFloat(leftMargin) + CGFloat(i) * (CGFloat(midMargin!) + imageWidth)
            let imageFrame = CGRect(x: xValue, y: 0, width: imageWidth, height: imageHeight)
            imageView.frame = imageFrame;
        }
    }
}
