//
//  UIView+Animation.swift
//  MyWishesRating
//
//  Created by Rost on 01.02.2020.
//  Copyright © 2020 Rost Gress. All rights reserved.
//

import Foundation
import UIKit


extension UIView {

    /// ---> Function for show view <--- ///
    func fadeIn(_ duration: TimeInterval = 0.6, delay: TimeInterval = 0.0, completion: @escaping ((Bool) -> Void) = {(finished: Bool) -> Void in}) {
        self.alpha = 0.1
        UIView.animate(withDuration: duration, delay: delay, options: .curveEaseIn, animations: {
            self.alpha = 1.0
        }, completion: nil)
    }
    
    
    /// ---> Function for hide view <--- ///
    func fadeOut(_ duration: TimeInterval = 0.6, delay: TimeInterval = 0.0, completion: @escaping (Bool) -> Void = {(finished: Bool) -> Void in}) {
        UIView.animate(withDuration: duration, delay: delay, options: .curveEaseOut, animations: {
            self.alpha = 0.1
        }, completion: { result in
            self.alpha = 0.0
        })
    }
}
