//
//  SendData.swift
//  todo_portfolio
//
//  Created by KM_TM on 2018. 11. 5..
//  Copyright © 2018년 KM_TM. All rights reserved.
//

import Foundation

class TodolistData {
    static let shared : TodolistData = TodolistData()
    
    var title : [String]?
    var content : [String]?
    var index : IndexPath?
}


