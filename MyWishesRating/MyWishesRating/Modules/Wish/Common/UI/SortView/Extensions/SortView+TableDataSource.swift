//
//  SortView+TableDataSource.swift
//  MyWishesRating
//
//  Created by Rost on 01.02.2020.
//  Copyright © 2020 Rost Gress. All rights reserved.
//

import Foundation
import UIKit


extension SortView: UITableViewDataSource {
            
    /// ---> Fucntion of table view data source protocol <--- ///
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = viewModel.makeCell(self, table: tableView, at: indexPath)

        return cell
    }
    
    
    /// ---> Fucntion of table view data source protocol <--- ///
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return viewModel.makeRowsCount(self)
    }
}
