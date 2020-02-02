//
//  WishViewModel+TableCell.swift
//  MyWishesRating
//
//  Created by Rost on 01.02.2020.
//  Copyright © 2020 Rost Gress. All rights reserved.
//

import Foundation
import UIKit


extension WishViewModel {
    
    
    /// ---> Function for reload table  <--- ///
    @objc func reloadTable(_ view: WishViewController) {
        view.sortView.alpha = 0.0
        
        if let type = DataContainer.shared.selectedType {
            switch type {
                case .books:
                    view.title = "My favorite books"
                    if let array = DataContainer.shared.booksArray {
                        dataArray = array
                    }
                case .cars:
                    view.title = "My favorite cars"
                    if let array = DataContainer.shared.carsArray {
                        dataArray = array
                    }
                case .pcgames:
                    view.title = "My favorite pc games"
                    if let array = DataContainer.shared.pcgamesArray {
                        dataArray = array
                    }
            }
        }
        
        dataArray = dataArray.sorted(by: { $0.rating > $1.rating })
        
        view.dataTable.reloadData()
    }
    
    
    /// ---> Function for refresh table after change rating  <--- ///
    @objc func refreshTable(_ view: WishViewController) {
        view.dataTable.reloadData()
    }
    
    
    /// ---> Function for make custom cells based on index of row  <--- ///
    @objc func makeCell(_ table: UITableView, at index: IndexPath) -> UITableViewCell {
        if let cell = table.dequeueReusableCell(withIdentifier: "WishCell", for: index) as? WishCell {
            
            let object = dataArray[index.row]
            if let model = cell.viewModel {
                model.setValues(cell, object: object, index: index)
            }

            return cell
        }
        
        return UITableViewCell()
    }
    
    
    /// ---> Function for make custom height based on index of row  <--- ///
    @objc func makeHeight() -> CGFloat {
        return 152.0
    }
    
    
    /// ---> Function for make count of rows  <--- ///
    @objc func makeRowsCount() -> Int {
        if dataArray != nil {
            return dataArray.count
        }
        
        return 0
    }
}
