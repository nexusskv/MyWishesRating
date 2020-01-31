//
//  ListCell.swift
//  MyWishesRating
//
//  Created by Rost on 31.01.2020.
//  Copyright © 2020 Rost Gress. All rights reserved.
//

import Foundation
import UIKit


class ListCell: UITableViewCell {
    @IBOutlet weak var listImageView: AsyncImageView!
    @IBOutlet weak var nameLabel: UILabel!
    var viewModel: ListCellViewModel!
    
    
    /// ---> View life cycle <--- ///
    override func awakeFromNib() {
        super.awakeFromNib()
        
        viewModel = ListCellViewModel()
        
        listImageView.roundCorners(listImageView.frame.size.width / 2.0)
    }    
}
