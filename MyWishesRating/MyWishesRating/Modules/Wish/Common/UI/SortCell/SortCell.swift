//
//  SortCell.swift
//  MyWishesRating
//
//  Created by Rost on 01.02.2020.
//  Copyright © 2020 Rost Gress. All rights reserved.
//

import Foundation
import UIKit


class SortCell: UITableViewCell {
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var sortButton: UIButton!
    var viewModel: SortCellViewModel!
    
    
    /// ---> View life cycle <--- ///
    override func awakeFromNib() {
        super.awakeFromNib()
        
        viewModel = SortCellViewModel()
    }
    
    
    /// ---> Action for sort button  <--- ///
    @IBAction func sortWishesButtonTapped(_ sender: UIButton) {
        viewModel.sortTypeSelected(sender.tag)
    }
}
