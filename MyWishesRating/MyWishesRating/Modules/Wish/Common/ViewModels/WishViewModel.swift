//
//  WishViewModel.swift
//  MyWishesRating
//
//  Created by Rost on 31.01.2020.
//  Copyright © 2020 Rost Gress. All rights reserved.
//

import Foundation
import UIKit


class WishViewModel {
    var dataArray: [WishObject]!
    
    
    /// ---> Function for UI customisations  <--- ///
    func setupUI(_ view: WishViewController) {
        let bgView = UIView(frame: .zero)
        bgView.backgroundColor = .white
        view.dataTable.backgroundView  = bgView
        view.dataTable.backgroundColor = .white

        view.dataTable.tableFooterView = UIView()
    }
    
    
    func reloadTable(_ view: WishViewController) {
        if let type = DataContainer.shared.selectedType {
            switch type {
            case .books:
                if let array = DataContainer.shared.booksArray {
                    dataArray = array
                }
            case .cars:
                if let array = DataContainer.shared.carsArray {
                    dataArray = array
                }
            case .pcgames:
                if let array = DataContainer.shared.pcgamesArray {
                    dataArray = array
                }
            }
        }
        
        view.dataTable.reloadData()
    }
    
}
