//
//  UIMaker.swift
//  MyWishesRating
//
//  Created by Rost on 01.02.2020.
//  Copyright © 2020 Rost Gress. All rights reserved.
//

import Foundation
import UIKit


class UIMaker {
    
    
    static func makeBarItem(_ rect: CGRect, image: String, target: AnyObject, selector: Selector) -> UIBarButtonItem {
        let barButton = UIButton(frame: rect)
        barButton.setImage(UIImage(named: image), for: .normal)
        barButton.addTarget(target, action: selector, for: .touchUpInside)

        return UIBarButtonItem(customView: barButton)
    }
}
