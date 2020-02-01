//
//  ListCellViewModel.swift
//  MyWishesRating
//
//  Created by Rost on 31.01.2020.
//  Copyright © 2020 Rost Gress. All rights reserved.
//

import Foundation
import UIKit


class ListCellViewModel {
    
    
    /// ---> Function for UI customisations  <--- ///
    func setupUI(_ cell: ListCell) {
        let radius = cell.listImageView.frame.size.width / 2.0
        cell.listImageView.roundCorners(radius, border: 0.5, color: .lightGray)
    }
    
    /// ---> Setter for values on UI <--- ///
    func setValues(_ cell: ListCell, object: ListObject) {
        cell.listImageView.image = UIImage(named: object.image)
        
        cell.nameLabel.text = object.name
    }
}
