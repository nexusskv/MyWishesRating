//
//  WishSortManager.swift
//  MyWishesRating
//
//  Created by Rost on 01.02.2020.
//  Copyright © 2020 Rost Gress. All rights reserved.
//

import Foundation
import UIKit


class WishSortManager: NSObject {
    
    
    /// ---> Function for display a view with types of sort  <--- ///
    @objc func displaySortView(_ view: WishViewController) {
        if let model = view.sortView.viewModel {
            model.setCurrentSort(view.sortView)
        }
        
        if view.sortView.alpha > 0.0 {
            view.sortView.fadeOut()
        } else {
            view.sortView.fadeIn()
            view.sortView.sortTable.reloadData()
        }
    }
    
    
    /// ---> Function for call sort handler  <--- ///
    @objc func sortByType(_ values: [String: AnyObject], view: WishViewController) {
        if let index = values["index"] as? Int {
            sortActionHandler(view, value: index)
        }
    }
    
    
    /// ---> Function for processing a select sort buttons  <--- ///
    @objc func sortActionHandler(_ view: WishViewController, value: Int) {
        if let type = WishesSortTypes(rawValue: value) {
            view.sortView.currentSort               = type
            DataContainer.shared.selectedSortType   = type
            view.sortView.sortTable.reloadData()

            view.sortView.fadeOut()
            
            sortWishes(view, value: value)
        }
    }
    
    
    /// ---> Function for processing a sort data by selected type  <--- ///
    @objc func sortWishes(_ view: WishViewController, value: Int) {
        if let type = WishesSortTypes(rawValue: value), let array = view.viewModel.dataArray {
            var sortArray = array
            
            switch type {
                case .none:
                    sortArray = array.sorted(by: { $0.wishId < $1.wishId })
                    
                case .nameAsc:
                    sortArray = array.sorted(by: { $0.name < $1.name })
                    
                case .nameDesc:
                    sortArray = array.sorted(by: { $0.name > $1.name })
                    
                case .authorAsc:
                    sortArray = array.sorted(by: { $0.author < $1.author })
                    
                case .authorDesc:
                    sortArray = array.sorted(by: { $0.author > $1.author })
                    
                case .yearAsc:
                    sortArray = array.sorted(by: { $0.year < $1.year })
                    
                case .yearDesc:
                    sortArray = array.sorted(by: { $0.year > $1.year })
                    
                case .costAsc:
                    sortArray = array.sorted(by: { $0.cost < $1.cost })
                    
                case .costDesc:
                    sortArray = array.sorted(by: { $0.cost > $1.cost })
                    
                case .shopAsc:
                    sortArray = array.sorted(by: { $0.shop < $1.shop })
                    
                case .shopDesc:
                    sortArray = array.sorted(by: { $0.shop > $1.shop })
                    
                case .ratingAsc:
                    sortArray = array.sorted(by: { $0.rating < $1.rating })
                    
                case .ratingDesc:
                    sortArray = array.sorted(by: { $0.rating > $1.rating })
            }
            
            view.viewModel.dataArray = sortArray
            
            view.dataTable.reloadData()
        }
    }
}
