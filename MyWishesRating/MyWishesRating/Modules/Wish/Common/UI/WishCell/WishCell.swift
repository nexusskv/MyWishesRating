//
//  WishCell.swift
//  MyWishesRating
//
//  Created by Rost on 31.01.2020.
//  Copyright © 2020 Rost Gress. All rights reserved.
//

import Foundation
import UIKit


class WishCell: UITableViewCell {
    @IBOutlet weak var wishImageView: AsyncImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var authorLabel: UILabel!
    @IBOutlet weak var yearLabel: UILabel!
    @IBOutlet weak var shopCostLabel: UILabel!
    @IBOutlet weak var upRatingButton: UIButton!
    @IBOutlet weak var downRatingButton: UIButton!
    @IBOutlet weak var ratingView: RatingView!    
    var viewModel: WishCellViewModel!

    
    /// ---> View life cycle <--- ///
    override func awakeFromNib() {
        super.awakeFromNib()
        
        viewModel = WishCellViewModel()
    }
    
    
    @IBAction func upRatingButtonTapped(_ sender: UIButton) {
        viewModel.sendChangeRating(ratingView.rating, isUp: true, index: sender.tag)
    }
    
    
    @IBAction func downRatingButtonTapped(_ sender: UIButton) {
        viewModel.sendChangeRating(ratingView.rating, isUp: false, index: sender.tag)
    }
}
