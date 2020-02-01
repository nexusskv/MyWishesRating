//
//  SortView+TableDelegate.swift
//  MyWishesRating
//
//  Created by Rost on 01.02.2020.
//  Copyright © 2020 Rost Gress. All rights reserved.
//

import Foundation
import UIKit


extension SortView: UITableViewDelegate {
    
    /// ---> Fucntion of table view delegate protocol <--- ///
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return viewModel.makeHeight(indexPath.row)
    }
    
    
    /// ---> Fucntion of table view delegate protocol <--- ///
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        
        viewModel.tableRowDidSelected(self, index: indexPath.row)
    }
}
