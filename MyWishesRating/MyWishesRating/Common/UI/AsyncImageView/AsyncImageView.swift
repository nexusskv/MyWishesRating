//
//  AsyncImageView.swift
//  MyWishesRating
//
//  Created by Rost on 30.01.2020.
//  Copyright © 2020 Rost Gress. All rights reserved.
//

import Foundation
import UIKit


var asyncImagesCashArray = NSCache<NSString, UIImage>()


class AsyncImageView: UIImageView {
    private var currentURL: NSString?

    /// ---> Function for download image asyncronously <--- ///
    func loadAsync(_ url: String, placeholder: UIImage?) {
        let imageURL = url as NSString
        if let cashedImage = asyncImagesCashArray.object(forKey: imageURL) {
            image = cashedImage
            return
        }
        
        image = placeholder
        currentURL = imageURL
        
        guard let requestURL = URL(string: url) else { image = placeholder; return }
        
        URLSession.shared.dataTask(with: requestURL) { (data, response, error) in
            DispatchQueue.main.async { [weak self] in
                if error == nil {
                    if let imageData = data {
                        if self?.currentURL == imageURL {
                            if let imageToPresent = UIImage(data: imageData) {
                                asyncImagesCashArray.setObject(imageToPresent, forKey: imageURL)
                                self?.image = imageToPresent
                            } else {
                                self?.image = placeholder!
                            }
                        }
                    } else {
                        self?.image = placeholder
                    }
                } else {
                    self?.image = placeholder
                }
            }
        }.resume()
    }
}
