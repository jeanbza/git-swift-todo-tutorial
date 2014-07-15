//
//  ToDoListTableTableViewController.swift
//  Todo
//
//  Created by Marcus Molchany on 7/14/14.
//  Copyright (c) 2014 Marcus Molchany. All rights reserved.
//

import UIKit

@objc(TodoListTableViewController) class TodoListTableViewController: UITableViewController {

    var todoItems: [TodoItem] = []
    
    init(coder aDecoder: NSCoder!) {
        super.init(coder: aDecoder)
    }
    
    func loadInitialData() {
        todoItems = [
            TodoItem(itemName: "Go to the dentist"),
            TodoItem(itemName: "Fetch groceries"),
            TodoItem(itemName: "Sleep")
        ]
    }
    
    func unwindToList(segue: UIStoryboardSegue) {
        var source = segue.sourceViewController as AddTodoItemViewController
        var todoItem:TodoItem = source.todoItem
        
        if todoItem != nil {
            self.todoItems += todoItem
            self.tableView.reloadData()
        }
    }
    
    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        tableView.deselectRowAtIndexPath(indexPath, animated: false)
        
        var tappedItem = todoItems[indexPath.row] as TodoItem
        tappedItem.completed = !tappedItem.completed
        
        tableView.reloadRowsAtIndexPaths([indexPath], withRowAnimation: UITableViewRowAnimation.None)

    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        var cell = tableView.dequeueReusableCellWithIdentifier("ListPrototypeCell") as UITableViewCell
        var todoItem = todoItems[indexPath.row]
        cell.textLabel.text = todoItem.itemName
        
        if (todoItem.completed) {
            cell.accessoryType = UITableViewCellAccessoryType.Checkmark;
        } else {
            cell.accessoryType = UITableViewCellAccessoryType.None;
        }
        
        return cell
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        loadInitialData()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return todoItems.count
    }

    override func tableView(tableView: UITableView!, numberOfRowsInSection section: Int) -> Int {
        return 0
    }
}
