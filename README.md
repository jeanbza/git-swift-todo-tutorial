# Swift TODO App Tutorial

CODE version: xCode 6.0, Swift 1.0
README version: xCode 6.0, Swift 1.0

=======================

- [Foreword](#user-content-foreword)
- [Installing This App](#user-content-installing-this-app)
- [Feedback](#user-content-feedback)
- [Getting Start: The Basics](#user-content-getting-start-the-basics)
  - [Create your project](#user-content-create-your-project)
  - [Add a textfield to your storyboard](#user-content-add-a-textfield-to-your-storyboard)
- [Gluing Our Views Together: The storyboard](#user-content-gluing-our-views-together-the-storyboard)
  - [Position text field using Auto Layout](#user-content-position-text-field-using-auto-layout)
  - [Create a table view controller](#user-content-create-a-table-view-controller)
  - [Add a segue to navigate forward](#user-content-add-a-segue-to-navigate-forward)
  - [Configure the Add button](#user-content-configure-the-add-button)
  - [Add a navigation controller to the view controller](#user-content-add-a-navigation-controller-to-the-view-controller)
- [Finally Programming: Swift](#user-content-finally-programming-swift)
  - [Create a custom view controller that is a subclass of UIViewController](#user-content-create-a-custom-view-controller-that-is-a-subclass-of-uiviewcontroller)
  - [Create a custom table view controller that is a subclass of UITableViewController](#user-content-create-a-custom-table-view-controller-that-is-a-subclass-of-uitableviewcontroller)
  - [Connecting cancel and done buttons to exit segue](#user-content-connecting-cancel-and-done-buttons-to-exit-segue)
  - [Create a Data Class](#user-content-create-a-data-class)
  - [Fill in your TodoItem class](#user-content-fill-in-your-todoitem-class)
  - [Give your table view controller an array of TodoItems](#user-content-give-your-table-view-controller-an-array-of-todoitems)
  - [Mark item as complete](#user-content-mark-item-as-complete)
  - [Lastly - add new items](#user-content-lastly---add-new-items)

## Foreword

1. This tutorial is based on [Apple's xCode 5 Objective C TODO tutorial](https://developer.apple.com/library/ios/referencelibrary/GettingStarted/RoadMapiOS/index.html#//apple_ref/doc/uid/TP40011343-CH2-SW1), which is an excellent place to look for auxiliary context (and screenshots!)
1. Check out the Todo folder for the completed code

## Installing This App

1. `cd /your/preferred/xcode/location`
1. `git clone https://github.com/jadekler/git-swift-todo-tutorial.git`
1. Open xcode
1. File > Open > /your/preferred/xcode/location/git-swift-todo-tutorial/Todo/Todo.xcodeproj

## Feedback

Please, provide feedback on anything you feel is lacking or could be better worded! Pull requests, github issues, or direct emails to jadekler@gmail.com are all welcome!

## Getting Start: The Basics

##### Create your project
1. Open xCode
1. Under iOS > Application, select 'Single View Application' and click Next
1. Enter as follows ![](/img/img_1.png)
1. Checkpoint: Hit the run button on the top left of xCode - you should see a blank white screen

##### Add a textfield to your storyboard
1. In the Project Navigator on the far left of xCode, select Main.storyboard
1. Find the Object Library, and find or search for 'Text Field'
1. <img src="https://raw.githubusercontent.com/jadekler/git-swift-todo-tutorial/updated_readme/img/img_2.png" height="250px"/>
1. Drag one to the furthest left guider on your View, about 1/3 from the top of your view
1. Increase the width of the text field by dragging the right side of the text view to the rightmost guider
1. Next, let's change the placeholder text
  1. In the Utilities Slider on the right side of Xcode, find the Attributes Inspector (4th icon on the top bar from the left)
  1. Enter 'new todo' next to 'Placeholder'
1. Your storyboard should look like this: ![](/img/img_3.png)
1. Checkpoint: Hit the run button on the top left of xCode - you should see a blank white screen with a text field that says 'New Todo' (don't worry if the text field goes off of the screen)

## Gluing Our Views Together: The storyboard

##### Position text field using Auto Layout
When you run your code, you can change orientation by going to 'Hardware' and clicking one of the rotate buttons. Note that when you do so, your text field doesn't adjust its size automatically. Let's address that.

1. In the Project Navigator on the far left of xCode, select Main.storyboard
1. Click on the Text Field in the View
1. Set top space on the top
  1. Control+Click and Drag from the Text Field to the area right above, which should highlight blue and say 'View'
  1. Release your drag
  1. Select 'Top Space to Top Layout Guide' from the small black menu
1. Set leading space on the left
  1. Control+Click and Drag from the Text Field to the area left of the view, which should highlight blue and say 'View'
  1. Release your drag
  1. Select 'Leading Space to Container Margin' from the small black menu
1. Set Trailing space on the right
  1. Control+Click and Drag from the Text Field to the area right of the view, which should highlight blue and say 'View'
  1. Release your drag
  1. Select 'Trailing Space to Container Margin' from the small black menu
1. Checkpoint: Hit the run button on the top left of xCode
  1. You should see the Text Field with equal spacing on each side and spacing from the top bar
  1. On the top bar of your computer click 'Hardware' and click 'Rotate Left' to enter landscape view
  1. The left, right, and top margin should match the portrait view

##### Create a table view controller
1. In the Project Navigator on the far left of xCode, select Main.storyboard
1. In the Object Library, search for table view controller
1. Drag a table view controller and drop it into the canvas. If you're lacking in space, right click on the canvas to zoom out
<make sure you're zoomed in to 100%>
<view or view controller>
1. Click the arrow on the left of your view controller
1. Drag and drop it on your table view controller to set the table view controller as the initial scene
1. Your canvas should now look like this: ![](/img/img_4.png)
1. Checkpoint: Hit the run button on the top left of xCode - you should see an empty table view

##### Add a segue to navigate forward
1. Select your Table View Controller
1. With the view controller selected, choose Editor > Embed In > Navigation Controller
1. In the canvas, select the newly created title area on your table view (or in the outline view select Navigation Item under Table View Controller)
1. ![](/img/img_5.png)
1. In the Attributes inspector, type 'My To-Do List' in the Title field
1. Add a '+' button
  1. Drag a Bar Button Item object from the Object Library to the far right of the navigation bar in the table view controller
  1. Select the newly created bar button item
  1. In the Attributes Inspector, change the Identifier from Custom to Add
1. Checkpoint: Hit the run button on the top left of xCode - you should see your newly created + button, but it won't do anything just yet

##### Configure the Add button
1. Control+Click and Drag from the Add button to your original View Controller
1. Release the drag and select 'present modally'
1. Checkpoint: Hit the run button on the top left of xCode - Click the + button and the New Todo view should appear

##### Add a navigation controller to the view controller
1. Select your view controller
<not to be confused with the table list view controller>
1. With the view controller selected, choose Editor > Embed In > Navigation Controller
1. In the canvas, select the newly created title area on your table view (or in the outline view select Navigation Item under Table View Controller)
1. In the Attributes inspector, type 'Add Todo' in the Title field
1. Add a 'Done' button right to the title
  1. Drag a Bar Button Item object from the Object Library to the far right of the navigation bar in the table view controller
  1. Select the newly created bar button item
  1. In the Attributes inspector, find the Identifier option in the Bar Button Item section. Choose 'Done' from the Identifier pop-up menu
1. Add a 'Cancel' button to the left of the title
  1. Drag a Bar Button Item object from the Object Library to the far right of the navigation bar in the table view controller
  1. Select the newly created bar button item
  1. In the Attributes inspector, find the Identifier option in the Bar Button Item section. Choose 'Cancel' from the Identifier pop-up menu
1. ![](/img/img_6.png)
1. Checkpoint: Hit the run button on the top left of xCode - you should see your newly created 'Done' and 'Cancel' buttons when you navigate to 'Add a todo', but they won't do anything just yet

## Finally Programming: Swift

##### Create a custom view controller that is a subclass of UIViewController
1. Choose File > New > File (or press Command-N)
1. Fill in as follows ![](/img/img_7.png)
1. Click Next, and Create
1. The Targets section will default to having your app selected and the tests for your app unselected. That’s perfect, so leave that as is
1. Click Create

Now that you’ve created a custom view controller subclass, you need to tell your storyboard to use your custom class instead of the generic view controller.

1. In the project navigator, select Main.storyboard
1. Select your View Controller (in the Outline View, this is 'View Controller' under the 'Add a todo Scene')
1. In the Identity inspector, open the pop-up menu next to the Class option
1. Choose AddToDoItemViewController

##### Create a custom table view controller that is a subclass of UITableViewController
1. Choose File > New > File (or press Command-N)
1. On the left of the dialog that appears, select the Cocoa Touch Class under iOS
1. ![](/img/img_8.png)
1. Click Next
1. Click Next, and Create
1. The Targets section will default to having your app selected and the tests for your app unselected. That’s perfect, so leave that as is
1. In the project navigator, select Main.storyboard
1. Select your **Table** View Controller (in the Outline View, this is 'Table View Controller' under the 'Todo list Scene')
1. In the Identity inspector, open the pop-up menu next to the Class option
1. Choose ToDoListTableViewController

##### Connecting cancel and done buttons to exit segue

1. Navigate to your TodoListTableTableViewController.swift
1. Add the following function (this registers the action and allows it to be used in storyboard):
  ```swift
  @IBAction func unwindToList(segue: UIStoryboardSegue) {
      println("Unwinding")
  }

  ```
1. Navigate to your storyboard
1. On the canvas, Control-drag from the 'Cancel' button to the Exit item right above (the right item of the three squares above <reword>)
1. Choose unwindToList: from the shortcut menu
1. Do the same for the 'Done' button
1. Checkpoint: Hit the run button on the top left of xCode - when you navigate over to Add a todo, your cancel and done buttons should pop you back over to Todo list (your table view)

##### Create a Data Class
1. Choose File > New > File
1. Select Cocoa Touch Class and click Next
1. Fill in as follows ![](/img/img_9.png)
1. Click Next, and Create
Your class should look like this
  ```swift
  import UIKit

  class ToDoItem: NSObject {
     
  }
  ```

##### Fill in your TodoItem class
1. Give it a name and completed variable and initialize them like so:
  ```swift
  import UIKit
  
  class TodoItem: NSObject {
    let itemName: String
    var completed: Bool
    
    init(itemName: String, completed: Bool = false) {
        self.itemName = itemName
        self.completed = completed
    }
  }
  ```

##### Give your table view controller an array of TodoItems
1. Navigate to TodoTableListViewController.swift
1. Give it an array of TodoItems:
  ```
  var todoItems: [TodoItem] = []
  
  ```
1. Give it a loadInitialData function that populates your array with some basic things:
  ```swift
  func loadInitialData() {
      todoItems = [
          TodoItem(itemName: "Go to the dentist"),
          TodoItem(itemName: "Fetch groceries"),
          TodoItem(itemName: "Sleep")
      ]
  }
  
  ```
1. Load your initial data from the viewDidLoad function:
  ```swift
  override func viewDidLoad() {
      super.viewDidLoad()
      loadInitialData()
  }
  
  ```
1. Make the number of sections in your table one:
  ```swift
  override func numberOfSectionsInTableView(tableView: UITableView!) -> Int {
      return 1
  }
  
  ```
1. Next, let's create a function that returns the number of rows per section. Since we only have one section, we'll return a count of the todoItems. Add the following function:
  ```swift
  override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
      return todoItems.count
  }
  
  ```
<this function looks retarded because: https://developer.apple.com/library/prerelease/ios/documentation/Swift/Conceptual/Swift_Programming_Language/Functions.html#//apple_ref/doc/uid/TP40014097-CH10-XID_202 (go to External Parameter Names>
1. The last function we need will generate UITableViewCells for each row at a specific index
  ```swift
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
      let tempCell = tableView.dequeueReusableCellWithIdentifier("ListPrototypeCell") as UITableViewCell
      let todoItem = todoItems[indexPath.row]
      
      // Downcast from UILabel? to UILabel
      let cell = tempCell.textLabel as UILabel!
      cell.text = todoItem.itemName
      
      return tempCell
  }
  ```
1. In the project navigator select Main.storyboard
1. In the Todo list TableView select the Prototype Table View Cell
1. In the Utilities slider on the right, go to the Attributes Inspector (4th icon from the left)
1. For the Identifier change to ListPrototypeCell
1. See: ![](/img/img_10.png)
1. Checkpoint - Run the app, the Table View should populate with the initial data "Go to the dentist", "Fetch groceries", "Sleep"

##### Mark item as complete
1. In the project navigator select TodoListTableViewController.swift
1. Add a tableView on select function to mark todoItems as complete
  ```swift
  override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
    tableView.deselectRowAtIndexPath(indexPath, animated: false)
    
    let tappedItem = todoItems[indexPath.row] as TodoItem
    tappedItem.completed = !tappedItem.completed
    
    tableView.reloadRowsAtIndexPaths([indexPath], withRowAnimation: UITableViewRowAnimation.None)
  }
  ```
1. Modify the tableView cell display function to have a checkmark if the item is finished
  
  ```swift
  if (todoItem.completed) {
      tempCell.accessoryType = UITableViewCellAccessoryType.Checkmark;
  } else {
      tempCell.accessoryType = UITableViewCellAccessoryType.None;
  }
  ```
1. The final version:
  ```swift
  override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
    let tempCell = tableView.dequeueReusableCellWithIdentifier("ListPrototypeCell") as UITableViewCell
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
  ```
1. Checkpoint - run the app, click an item and a check mark should appear next to it, click it again to make the checkmark disappear

##### Lastly - add new items
1. In the project navigator select Main.storyboard
1. In the outline view, select the AddTodoItemViewController object
1. Click the Assistant button in the upper right of the window’s toolbar to open the assistant editor (the suit-looking icon)
1. The editor on the right should appear with AddTodoItemViewController.swift displayed. If it isn’t displayed, click the filename in the editor on the right and choose AddTodoItemViewController.swift
1. Select the text field in your storyboard
1. ![](/img/img_11.png)
1. Control-drag from the text field on your canvas to the code display in the editor on the right, somewhere inside the class, and type textField for name
1. Click Connect. This should add the following to your code: ```@IBOutlet weak var textField: UITextField!```
1. Do the same for the Done button, calling it 'doneButton'. In your code it should look like ```@IBOutlet weak var doneButton: UIBarButtonItem!```
1. Next, let's give our controller a todoItem that it will store our 'add' data into: ```var todoItem: TodoItem = TodoItem(itemName: "")```
1. Of course we also need to be able to take data from the user input and assign it to this variable:

  ```swift
  override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject!) {
    if (countElements(self.textField.text) > 0) {
        self.todoItem = TodoItem(itemName: self.textField.text)
    }
  }  
  ```
1. Now, we need to head back over to TodoListTableTableViewController.swift and add an unwind that takes the data that AddTodoItemViewController.swift is holding and pops into the array of todoItems: 
  ```swift
  @IBAction func unwindAndAddToList(segue: UIStoryboardSegue) {
    let source = segue.sourceViewController as AddTodoItemViewController
    let todoItem:TodoItem = source.todoItem
        
    if todoItem.itemName != "" {
        self.todoItems.append(todoItem)
        self.tableView.reloadData()
    }
  }
  ```
1. Lastly, select Main.storyboard in the project navigator
1. On the canvas, Control-drag from the 'Done' button to the Exit item and select unwindAndAddToList
1. Checkpoint: Run your app - you should be able to add items!

## That's it!
As mentioned before, we love feedback - please open issues about anything you feel is missing, or email the authors directly about questions or feedback at jadekler@gmail.com.

  [1]: http://stackoverflow.com/questions/24029586/xcode-6-storyboard-unwind-segue-with-swift-not-connecting-to-exit
