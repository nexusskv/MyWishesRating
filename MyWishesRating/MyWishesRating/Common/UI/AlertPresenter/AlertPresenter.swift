//
//  AlertPresenter.swift
//  MyWishesRating
//
//  Created by Rost on 30.01.2020.
//  Copyright © 2020 Rost Gress. All rights reserved.
//

import Foundation
import UIKit


class AlertPresenter {
    
    
    /// ---> Function for show alerts <--- ///
    static func showAlert(_ vc: UIViewController, message: String) {
        DispatchQueue.main.async(execute: {
            let alert = UIAlertController(title: "Alert!", message: message, preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "OK", style: .cancel, handler: nil))
            
            vc.present(alert, animated: true, completion:nil)
        })
    }
}
