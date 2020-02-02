//
//  ListViewController+Selectors.swift
//  MyWishesRating
//
//  Created by Rost on 02.02.2020.
//  Copyright © 2020 Rost Gress. All rights reserved.
//

import Foundation
import UIKit


extension ListViewController {
         

    /// ---> Selector for reloadTable notification <--- ///
    @objc func reloadList() {
        viewModel.reloadTable(self)
    }
}
