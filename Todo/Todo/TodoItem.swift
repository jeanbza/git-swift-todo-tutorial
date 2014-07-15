//
//  TodoItem.swift
//  Todo
//
//  Created by Marcus Molchany on 7/15/14.
//  Copyright (c) 2014 Marcus Molchany. All rights reserved.
//

import UIKit

class TodoItem: NSObject {
    var itemName:String = ""
    var completed:Bool = false
    
    init(itemName:String) {
        self.itemName = itemName
    }
}
