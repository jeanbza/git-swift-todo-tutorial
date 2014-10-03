//
//  TodoItem.swift
//  Todo
//

import UIKit

class TodoItem: NSObject {
    var itemName:String = ""
    var completed:Bool = false
    
    init(itemName:String) {
        self.itemName = itemName
    }
}
