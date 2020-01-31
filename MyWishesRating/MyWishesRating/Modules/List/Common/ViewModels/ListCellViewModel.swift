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
    
    /// ---> Setter for values on UI <--- ///
    func setValues(_ cell: ListCell, object: ListObject) {
        cell.listImageView.setUrl(object.image)
        
        cell.nameLabel.text = object.name
    }
}
