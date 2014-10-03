//
//  AddToDoItemViewController.swift
//  Todo
//
//  Created by Marcus Molchany on 7/14/14.
//  Copyright (c) 2014 Marcus Molchany. All rights reserved.
//

import UIKit

class AddTodoItemViewController: UIViewController {

    var todoItem: TodoItem = TodoItem(itemName: "")
    
    @IBOutlet var doneButton: UIBarButtonItem!
    @IBOutlet var textField: UITextField!
    
    required init(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject!) {
        if (countElements(self.textField.text) > 0) {
            self.todoItem = TodoItem(itemName: self.textField.text)
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}
