//
//  WishViewController+TableDelegate.swift
//  MyWishesRating
//
//  Created by Rost on 31.01.2020.
//  Copyright © 2020 Rost Gress. All rights reserved.
//

import Foundation
import UIKit


extension WishViewController: UITableViewDelegate {

    
    /// ---> Function of table view delegate protocol <--- ///
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return viewModel.makeHeight()
    }
}
