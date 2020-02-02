//
//  AsyncImageView+Setter.swift
//  MyWishesRating
//
//  Created by Rost on 30.01.2020.
//  Copyright © 2020 Rost Gress. All rights reserved.
//

import Foundation
import UIKit


extension AsyncImageView {
    
    
    /// ---> Function for set url to image view <--- ///
    func setUrl(_ value: String) {
        let holderImage = UIImage(named: "image_holder")
        if !value.isEmpty {
            self.loadAsync(value, placeholder: holderImage)
        } else {
            self.image = holderImage
        }
    }
}
