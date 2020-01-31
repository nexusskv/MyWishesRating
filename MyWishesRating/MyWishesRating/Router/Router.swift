//
//  Router.swift
//  MyWishesRating
//
//  Created by Rost on 31.01.2020.
//  Copyright © 2020 Rost Gress. All rights reserved.
//

import Foundation
import UIKit


class Router {
    
    /// ---> Function for show some view controller from other view controller <--- ///
    static func push(_ vc: String, from parent: UIViewController) {
        let storyboard = UIStoryboard(name: vc, bundle: nil)
        let child = storyboard.instantiateViewController(withIdentifier: vc + "ViewController")

        if let nc = parent.navigationController {
            nc.pushViewController(child, animated: true)
        }
    }
    
        
    /// ---> Function for close some view controller from other view controller <--- ///
    static func pop(_ vc: UIViewController) {
        if let nc = vc.navigationController {
            nc.popViewController(animated: true)
        }
    }
}
