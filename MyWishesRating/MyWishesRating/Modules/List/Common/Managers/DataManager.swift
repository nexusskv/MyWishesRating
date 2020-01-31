//
//  DataManager.swift
//  MyWishesRating
//
//  Created by Rost on 30.01.2020.
//  Copyright © 2020 Rost Gress. All rights reserved.
//

import Foundation


class DataManager {
    
    static func makeDataSource(_ view: ListViewController) {
        let jsonResult = JsonReader.readJson("my_wishes")
        
        if let message = jsonResult as? String {
            DispatchQueue.main.async {
                AlertPresenter.showAlert(view, message: message)
            }
        }
        
        if let results = jsonResult as? [String: AnyObject] {
            DispatchQueue.global(qos: .userInitiated).async {
                if let allList = results["All"] as? [[String: AnyObject]] {
                    handleAllList(allList, view: view)
                }
                
                if let list = DataContainer.shared.listArray {
                    let keysArray = list.map { $0.name }
                    
                    for count in 0 ..< keysArray.count {
                        let key = keysArray[count]
                        if let array = results[key] as? [[String : AnyObject]], let type = WishesTypes(rawValue: count) {
                            handleWishes(array, key: key, type: type, view: view)
                        }
                    }
                    
                    DispatchQueue.main.async {
                        NotificationCenter.default.post(name: reloadListName, object: nil)
                    }
                }
            }
        }
    }
    
    
    static func handleAllList(_ array: [[String: AnyObject]], view: ListViewController) {
        do {
            let data = try JSONSerialization.data(withJSONObject: array, options: [])
            let array = try JSONDecoder().decode([ListObject].self, from: data)
            if array.count > 0 {
                DataContainer.shared.listArray = array
            } else {
                DispatchQueue.main.async {
                    let message = "The list of wishes is empty. Please check and try later."
                    AlertPresenter.showAlert(view, message: message)
                }
            }
        } catch {
            DispatchQueue.main.async {
                AlertPresenter.showAlert(view, message: error.localizedDescription)
            }
        }
    }
    
    
    static func handleWishes(_ array: [[String: AnyObject]], key: String, type: WishesTypes, view: ListViewController) {
        do {
            let data = try JSONSerialization.data(withJSONObject: array, options: [])
            let array = try JSONDecoder().decode([WishObject].self, from: data)
            if array.count > 0 {
                switch type {
                    case .books:
                        DataContainer.shared.booksArray = array
                    case .cars:
                        DataContainer.shared.carsArray = array
                    case .pcgames:
                        DataContainer.shared.pcgamesArray = array
                }
            } else {
                DispatchQueue.main.async {
                    let message = "The list of" + key + "is empty. Please check and try later."
                    AlertPresenter.showAlert(view, message: message)
                }
            }
        } catch {
            DispatchQueue.main.async {
                AlertPresenter.showAlert(view, message: error.localizedDescription)
            }
        }
    }
}
