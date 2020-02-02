//
//  Constants.swift
//  MyWishesRating
//
//  Created by Rost on 30.01.2020.
//  Copyright © 2020 Rost Gress. All rights reserved.
//

import Foundation


/// ---> Names for notification center <--- ///
let reloadListName          = NSNotification.Name("reloadList")
let changeRatingName        = NSNotification.Name("changeRating")
let changeRatingLimitName   = NSNotification.Name("changeRatingLimit")
let tableNeedRefreshName    = NSNotification.Name("tableNeedRefresh")
let sortItemTappedName      = NSNotification.Name("sortItemTapped")
let sortTypeSelectedName    = NSNotification.Name("sortTypeSelected")


/// ---> Constants for borders of rating <--- ///
let lowRate: Float     = 0.0
let topRate: Float     = 10.0


/// ---> Constants for direction of rating  <--- ///
let rateUp             = "up"
let rateDown           = "down"
