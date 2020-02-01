//
//  ListViewModel.swift
//  MyWishesRating
//
//  Created by Rost on 30.01.2020.
//  Copyright © 2020 Rost Gress. All rights reserved.
//

import Foundation
import UIKit


class ListViewModel {
    var dataArray: [ListObject]!
    
    
    /// ---> Function for UI customisations  <--- ///
    func setupUI(_ view: ListViewController) {
        view.title = "My favorite wishes"
        
        let bgView = UIView(frame: .zero)
        bgView.backgroundColor = .white
        view.dataTable.backgroundView  = bgView
        view.dataTable.backgroundColor = .white

        view.dataTable.tableFooterView = UIView()
    }
    
    
    /// ---> Function for reload table  <--- ///
    func reloadTable(_ view: ListViewController) {
        if let objects = DataContainer.shared.listArray {
            dataArray = objects
        }
        
        view.dataTable.reloadData()
    }
    
    
    /// ---> Function for make custom cells based on index of row  <--- ///
    func makeCell(_ table: UITableView, at index: IndexPath) -> UITableViewCell {
        if let cell = table.dequeueReusableCell(withIdentifier: "ListCell", for: index) as? ListCell {
            
            let object = dataArray[index.row]
            if let model = cell.viewModel {
                model.setValues(cell, object: object)
            }

            return cell
        }
        
        return UITableViewCell()
    }
    
    
    /// ---> Function for make custom height based on index of row  <--- ///
    func makeHeight() -> CGFloat {
        return 86.0
    }
    
    
    /// ---> Function for make count of rows  <--- ///
    func makeRowsCount() -> Int {
        if dataArray != nil {
            return dataArray.count
        }
        
        return 0
    }
    
    
    /// ---> Function for present details view  <--- ///
    func presentDetails(_ view: ListViewController, index: Int) {
        if let type = WishesTypes(rawValue: index) {
            DataContainer.shared.selectedType      = type
            
            DataContainer.shared.selectedSortType  = .none
            
            Router.push("Wish", from: view)
        }
    }
}
