import UIKit

class TodoListTableViewController: UITableViewController {

    var todoItems: [TodoItem] = []
    
    @IBAction func unwindAndAddToList(segue: UIStoryboardSegue) {
        let source = segue.sourceViewController as! AddTodoItemViewController
        let todoItem:TodoItem = source.todoItem
            
        if todoItem.itemName != "" {
            self.todoItems.append(todoItem)
            self.tableView.reloadData()
        }
    }
    
    @IBAction func unwindToList(segue: UIStoryboardSegue) {
        
    }

    func loadInitialData() {
        todoItems = [
            TodoItem(itemName: "Go to the dentist"),
            TodoItem(itemName: "Fetch groceries"),
            TodoItem(itemName: "Sleep")
        ]
    }
    
    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        tableView.deselectRowAtIndexPath(indexPath, animated: false)
        
        let tappedItem = todoItems[indexPath.row] as TodoItem
        tappedItem.completed = !tappedItem.completed
        
        tableView.reloadRowsAtIndexPaths([indexPath], withRowAnimation: UITableViewRowAnimation.None)

    }
    
    override func tableView(tableView: UITableView?, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let foo = tableView!.dequeueReusableCellWithIdentifier("ListPrototypeCell") as UITableViewCell?
        let tempCell = foo!
        let todoItem = todoItems[indexPath.row]
        
        // Downcast from UILabel? to UILabel
        let cell = tempCell.textLabel as UILabel!
        cell.text = todoItem.itemName
        
        if (todoItem.completed) {
            tempCell.accessoryType = UITableViewCellAccessoryType.Checkmark;
        } else {
            tempCell.accessoryType = UITableViewCellAccessoryType.None;
        }
        
        return tempCell
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
}
