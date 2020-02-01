//
//  SortView.swift
//  MyWishesRating
//
//  Created by Rost on 01.02.2020.
//  Copyright © 2020 Rost Gress. All rights reserved.
//

import Foundation
import UIKit


class SortView: UIView {
    @IBOutlet weak var sortTable: UITableView!
    @IBOutlet weak var xButton: UIButton!
    var titlesArray: [String] = []
    var currentSort: WishesSortTypes = .none
    var viewModel: SortViewModel!
    
    
    /// ---> View life cycle <--- ///
    override func awakeFromNib() {
        super.awakeFromNib()
        
        viewModel = SortViewModel()
        
        viewModel.setupUI(self)
    }

    
    /// ---> Action for sort button  <--- ///
    @IBAction func xButtonTapped() {
        viewModel.hideView(self)
    }
}
