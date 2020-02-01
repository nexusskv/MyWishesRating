//
//  SortViewModel.swift
//  MyWishesRating
//
//  Created by Rost on 01.02.2020.
//  Copyright © 2020 Rost Gress. All rights reserved.
//

import Foundation
import UIKit


class SortViewModel {
    
    
    /// ---> Function for UI customisations  <--- ///
    func setupUI(_ view: SortView) {
        view.roundCorners(7.0, border: 0.5, color: .orange)
        
        let halfRadius = view.xButton.frame.size.width / 2.0
        view.xButton.roundCorners(halfRadius, border: 0.5, color: .white)
        
        view.sortTable.tableFooterView = UIView()
        
        let bgView = UIView(frame: .zero)
        bgView.backgroundColor = .clear
        view.sortTable.backgroundView  = bgView
        view.sortTable.backgroundColor = .clear
        
        view.titlesArray = ["No sort",
                            "Name ascending", "Name descending",
                            "Author ascending", "Author descending",
                            "Year ascending", "Year descending",
                            "Cost ascending", "Cost descending",
                            "Shop ascending", "Shop descending",
                            "Rating ascending", "Rating descending",
        ]
    }
    
    
    /// ---> Function for set selected set  <--- ///
    func setCurrentSort(_ view: SortView) {
        if DataContainer.shared.selectedSortType != .none {
            view.currentSort = DataContainer.shared.selectedSortType
        }
        
        view.sortTable.reloadData()
        
        let scrollIndex = IndexPath(row: DataContainer.shared.selectedSortType.rawValue,
                                    section: 0)
        view.sortTable.scrollToRow(at: scrollIndex, at: .top, animated: true)
    }
    
    
    /// ---> Function for UI customisations  <--- ///
    func hideView(_ view: SortView) {
        view.fadeOut()
    }

    
    /// ---> Function for make custom cells based on index of row  <--- ///
    func makeCell(_ view: SortView, table: UITableView, at index: IndexPath) -> UITableViewCell {
        if let cell = table.dequeueReusableCell(withIdentifier: "SortCell", for: index) as? SortCell {
            let title = view.titlesArray[index.row]
            
            if let model = cell.viewModel {
                model.setValues(cell, value: title, index: index.row, sort: view.currentSort.rawValue)
            }
            
            return cell
        }
        
        return UITableViewCell()
    }
    
    
    /// ---> Function for make custom height based on index of row  <--- ///
    func makeHeight(_ index: Int) -> CGFloat {
        return 52.0
    }
    
    
    /// ---> Function for make count of rows  <--- ///
    func makeRowsCount(_ view: SortView) -> Int {
        return view.titlesArray.count
    }
    
    
    /// ---> Function for mark row as selected  <--- ///
    func tableRowDidSelected(_ view: SortView, index: Int) {
        if let type = WishesSortTypes(rawValue: index) {
            view.currentSort = type
        }
        
        view.sortTable.reloadData()
        
        NotificationCenter.default.post(name: sortTypeSelectedName,
                                        object: nil,
                                        userInfo: ["index": index])
    }
}
