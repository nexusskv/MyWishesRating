//
//  ListViewController+TableDataSource.swift
//  MyWishesRating
//
//  Created by Rost on 31.01.2020.
//  Copyright © 2020 Rost Gress. All rights reserved.
//

import Foundation
import UIKit


extension ListViewController: UITableViewDataSource {

    
    /// ---> Function of table view data source protocol <--- ///
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = viewModel.makeCell(tableView, at: indexPath)

        return cell
    }
    
    
    /// ---> Function of table view data source protocol <--- ///
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return viewModel.makeRowsCount()
    }
}
