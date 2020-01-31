//
//  JsonReader.swift
//  MyWishesRating
//
//  Created by Rost on 30.01.2020.
//  Copyright © 2020 Rost Gress. All rights reserved.
//

import Foundation


class JsonReader {
    
    static func readJson(_ file: String) -> AnyObject {
        if let path = Bundle.main.path(forResource: file, ofType: "json") {
            do {
                let data = try Data(contentsOf: URL(fileURLWithPath: path), options: .mappedIfSafe)
                let jsonResult = try JSONSerialization.jsonObject(with: data, options: .mutableLeaves)
                
                if let json = jsonResult as? Dictionary<String, AnyObject> {
                    return json as AnyObject
                }
            } catch {
                return error.localizedDescription as AnyObject
            }
        }
        
        return "Json file can't read" as AnyObject
    }
}
