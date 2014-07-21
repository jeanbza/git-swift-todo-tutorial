git-swift-todo-tutorial
=======================

## Foreword

1. We are obligated by an NDA *not to post any screenshots*. Sorry! We'll add them when the NDA lifts.
1. Much of xCode 6 is in flux - we are developing for *xCode 6 Beta 3*. We will update as we go and update that message.

## The Basics

##### Create your project
1. Open xCode
1. Under iOS > Application, select 'Single View Application' and click Next
1. Type 'Todo' as the Product Name, Swift as the Language, iPhone as the Devices, 'self' for Organization Identifier, and make sure Core Data is unchecked
1. Save into a folder of your choosing
1. Choose 'iPhone 4s' from the selection of devices at the top left of xCode
1. Checkpoint: Hit the run button on the top left of xCode - you should see a blank white screen

##### Add a textfield to your storyboard
1. In the Project Navigator on the far left of xCode, select Main.storyboard
1. Find the Object Library at the bottom of the Utilities panel (which is on the far right of xCode). If you don't see the utilities panel, click the Utilities button at the top right
1. At the bottom is a search panel. Find or search for 'Text Field'
1. Drag one to the furthest left guider on your View, about 1/3 from the top of your view
1. Increase the width of the text field by dragging the right side of the text view to the rightmost guider
1. Next, let's change the placeholder text
  1. In the Utilities Slider on the right side of Xcode, find the Attributes Inspector (4th icon on the top bar from the left)
  1. Enter 'new todo' next to 'Placeholder'
1. Checkpoint: Hit the run button on the top left of xCode - you should see a blank white screen with a text field that says 'New Todo' (don't worry if the text field goes off of the screen)

## The storyboard

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
  1. Select 'Leading Space to Container' from the small black menu
1. Set Trailing space on the right
  1. Control+Click and Drag from the Text Field to the area right of the view, which should highlight blue and say 'View'
  1. Release your drag
  1. Select 'Trailing Space to Container' from the small black menu
1. Checkpoint: Hit the run button on the top left of xCode
  1. You should see the Text Field with equal spacing on each side and spacing from the top bar
  1. On the top bar of your computer click 'Hardware' and click 'Rotate Left' to enter landscape view
  1. The spacing from the left, right, and top sides should match the portrait view

##### Create a table view controller
1. In the Project Navigator on the far left of xCode, select Main.storyboard
1. Drag a table view controller and drop it into the canvas. If you're lacking in space, right click on the canvas to zoom out
<make sure you're zoomed in to 100%>
<view or view controller>
1. Click the arrow on the left of your view controller
1. Drag and drop it on your table view controller to set the table view controller as the initial scene
1. Checkpoint: Hit the run button on the top left of xCode - you should see an empty table view

##### Add a segue to navigate forward
1. Select your Table View Controller
1. With the view controller selected, choose Editor > Embed In > Navigation Controller
1. In the canvas, select the newly created title area on your table view (or in the outline view select Navigation Item under Table View Controller)
1. In the Attributes inspector, type 'My To-Do List' in the Title field
1. Add a '+' button
  1. Drag a Bar Button Item object from the Object Library to the far right of the navigation bar in the table view controller
  1. Select the newly created bar button item
1. Checkpoint: Hit the run button on the top left of xCode - you should see your newly created + button, but it won't do anything just yet  1. In the Attributes inspector, find the Identifier option in the Bar Button Item section. Choose 'Add' from the Identifier pop-up menu
1. Checkpoint: Hit the run button on the top left of xCode - you should see your newly created + button, but it won't do anything just yet

##### Configure the Add button
1. Control+Click and Drag from the Add button to the View Controller with the New Todo Text Field
1. Release the drag
1. Click 'present modally' from the small menu that appears
1. Checkpoint: Hit the run button on the top left of xCode - Click the Add button and the New Todo view should appear, but there is no way to get back

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
1. Checkpoint: Hit the run button on the top left of xCode - you should see your newly created 'Done' and 'Cancel' buttons when you navigate to 'Add a todo', but they won't do anything just yet

## The swift

##### Create a custom view controller that is a subclass of UIViewController
1. Choose File > New > File (or press Command-N)
1. On the left of the dialog that appears, select the Cocoa Touch Class under iOS
1. In the Class field, type 'AddTodoItemViewController'
1. In the Language field, select Swift
1. Choose UIViewController in the “Subclass of” pop-up menu
1. Make sure the “Also create XIB file” option is unselected
1. Click Next
1. The save location will default to your project directory. Leave that as is
1. The Group option will default to your app name, ToDoList. Leave that as is
1. The Targets section will default to having your app selected and the tests for your app unselected. That’s perfect, so leave that as is
1. Click Create

Now that you’ve created a custom view controller subclass, you need to tell your storyboard to use your custom class instead of the generic view controller.

1. In the project navigator, select Main.storyboard
1. Select your View Controller (in the Outline View, this is 'View Controller' under the 'Add a todo Scene')
1. With the view controller selected, open the Identity inspector in the utility area.
1. In the Identity inspector, open the pop-up menu next to the Class option
1. Choose AddToDoItemViewController

##### Create a custom table view controller that is a subclass of UITableViewController
1. Choose File > New > File (or press Command-N)
1. On the left of the dialog that appears, select the Cocoa Touch Class under iOS
1. In the Class field, type 'TodoListTableViewController'
1. In the Language field, select Swift
1. Choose UITableViewController in the “Subclass of” pop-up menu
1. Make sure the “Also create XIB file” option is unselected
1. Click Next
1. The save location will default to your project directory. Leave that as is
1. The Group option will default to your app name, ToDoList. Leave that as is
1. The Targets section will default to having your app selected and the tests for your app unselected. That’s perfect, so leave that as is
1. Click Create
1. In the project navigator, select Main.storyboard
1. Select your **Table** View Controller (in the Outline View, this is 'Table View Controller' under the 'Todo list Scene')
1. With the table view controller selected, open the Identity inspector in the utility area.
1. In the Identity inspector, open the pop-up menu next to the Class option
1. Choose ToDoListTableViewController

##### Connecting cancel and done buttons to exit segue <reword?>

WHAT YOU SHOULD BE ABLE TO DO
1. Navigate to your TodoListTableTableViewController.swift
1. Add the following function (this registers the action and allows it to be used in storyboard):
  ```
  @IBAction func unwindToList(segue: UIStoryboardSegue) {
      println("Unwinding")
  }

  ```
1. Navigate to your storyboard
1. On the canvas, Control-drag from the 'Cancel' button to the Exit item right above (the right item of the three squares above <reword>)
1. Choose unwindToList: from the shortcut menu
1. Do the same for the 'Done' button

WHAT YOU HAVE TO DO BECAUSE XCODE 6 IS BROKEN

(Note: see http://stackoverflow.com/questions/24029586/xcode-6-storyboard-unwind-segue-with-swift-not-connecting-to-exit for more details on this bug)

1. Choose File > New > File (or press Command-N)
1. On the left of the dialog that appears, select the Header File under iOS
1. Save as 'TodoListTableViewController'
1. Add the following to TodoListTableViewController.h:
  ```
  @interface TodoListTableViewController
  
  -(IBAction) unwindToList:(UIStoryboardSegue *) segue;
  
  @end
  ```
<blurb>This registers the action and allows it to be used in storyboard</blurb>
1. Navigate to TodoListTableViewController.swift
1. Change the class definition to:
  ```
  @objc(TodoListTableViewController) class TodoListTableViewController: UITableViewController {
  
  ```
<blurb>This effectively makes it a C# class, which sucks, but there you go <reword></blurb>
1. Add the Unwind function:
  ```
  func unwindToList(segue: UIStoryboardSegue) {
  
  }
  ```
1. Re-register TodoListTableViewController, since we mucked about with it
  1. Go to your storyboard
  1. Click your table view controller
  1. Go to the Identity Inspector
  1. Pull down the dropdown and re-select TodoListTableViewController
1. On the canvas, Control-drag from the 'Cancel' button to the Exit item right above (the right item of the three squares above <reword>)
1. Choose unwindToList: from the shortcut menu
1. Do the same for the 'Done' button

===============

1. Checkpoint: Hit the run button on the top left of xCode - when you navigate over to Add a todo, your cancel and done buttons should pop you back over to Todo list (your table view)

##### Create a Data Class
1. Choose File > New > File
1. In the iOS section on the left select Source
1. Select Cocoa Touch Class and click Next
1. Type ToDoItem in the Class field
1. In the Subclass dropdown select NSObject
1. Make sure Language is set to Swift and select Next
1. Click Create
Your class should look like this
```
import UIKit

class ToDoItem: NSObject {
   
}
```

##### Code a Data Class called TodoItem
1. Give it a name and completed variable and initialize them like so:
  ```
  import UIKit
  
  class TodoItem: NSObject {
      var itemName:String = ""
      var completed:Bool = false
  
      init(itemName:String) {
          self.itemName = itemName
      }
  }
  ```

##### Give your table view controller an array of TodoItems
1. Navigate to your TodoTableListViewController
1. Give it an array of TodoItems:
  ```
  var todoItems: [TodoItem] = []
  
  ```
1. Give it an loadInitialData function that populates your array:
  ```
  func loadInitialData() {
      todoItems = [
          TodoItem(itemName: "Go to the dentist"),
          TodoItem(itemName: "Fetch groceries"),
          TodoItem(itemName: "Sleep")
      ]
  }
  
  ```
1. Load your initial data from the viewDidLoad function:
  ```
  override func viewDidLoad() {
      super.viewDidLoad()
      loadInitialData()
  }
  
  ```
1. Make the number of sections in your table one:
  ```
  override func numberOfSectionsInTableView(tableView: UITableView!) -> Int {
      return 1
  }
  
  ```
1. Next, let's create a function that returns the number of rows per section. Since we only have one section, we'll return a count of the todoItems. Add the following function:
  ```
  override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
      return todoItems.count
  }
  
  ```
<this function looks retarded because: https://developer.apple.com/library/prerelease/ios/documentation/Swift/Conceptual/Swift_Programming_Language/Functions.html#//apple_ref/doc/uid/TP40014097-CH10-XID_202 (go to External Parameter Names>
1. The last function we need will genereate UITableViewCells for each row at a specific index
  ```
  override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
      var cell = tableView.dequeueReusableCellWithIdentifier("ListPrototypeCell") as UITableViewCell
      var todoItem = todoItems[indexPath.row]
      cell.textLabel.text = todoItem.itemName
      
      return cell
  }
  ```
1. In the project navigator select Main.storyboard
1. In the Todo list TableView select the Prototype Table View Cell
1. In the Utilities slider on the right, go to the Attributes Inspector (4th icon from the left)
1. For the Identifier change the Reuse Identifier to ListPrototypeCell
<note: don't copy paste - type slowly and click out of box to make sure storyboard updates>
1. Checkpoint - Run the app, the Table View should populate with the initial data "Go to the dentist", "Fetch groceries", "Sleep"

##### Mark item as complete
1. In the project navigator select TodoListTableViewController.swift
1. Create the override function tablView didSelectRowAtIndexPath
  ```
  override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
      tableView.deselectRowAtIndexPath(indexPath, animated: false)
      
      var tappedItem = todoItems[indexPath.row] as TodoItem
      tappedItem.completed = !tappedItem.completed
      
      tableView.reloadRowsAtIndexPaths([indexPath], withRowAnimation: UITableViewRowAnimation.None)
  
  }
  ```
1. Add code to tableView cellForRowAtIndexPath to display checkmark on completed items
  ```
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
  ```
1. Checkpoint - run the app, click an item and a check mark should appear next to it, click it again to make the checkmark disappear

##### Lastly - add new items
1. Head on over to your Storyboard
1. In the outline view, select the AddTodoItemViewController object
1. Click the Assistant button in the upper right of the window’s toolbar to open the assistant editor (the suit-looking icon)
1. The editor on the right should appear with AddTodoItemViewController.swift displayed. If it isn’t displayed, click the filename in the editor on the right and choose AddTodoItemViewController.swift
1. Select the text field in your storyboard
1. Control-drag from the text field on your canvas to the code display in the editor on the right, stopping the drag at the line just below the ```class AddTodoItemViewController: UIViewController {``` line
1. In the dialog that appears, for Name, type textField and leave the rest of the options as they are
1. Click Connect
1. This will hook up your button to your code and create a connection in the storyboard xml for you. In your code it should look like ```@IBOutlet var textField: UITextField```
1. Do the same for the Done button, calling it 'doneButton'. In your code it should look like ```@IBOutlet var doneButton: UIBarButtonItem```
1. Next, let's give our controller a todoItem that it will store our 'add' data into: ```var todoItem: TodoItem = TodoItem(itemName: "")```
1. Of course we also need to be able to take data from the user input and assign it to this variable:
  ``` 
  override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject) {
      if (self.textField.text.utf16count > 0) {
          self.todoItem = TodoItem(itemName: self.textField.text)
      }
  }
  
  ```
1. Lastly, we need to head back over to TodoListTableTableViewController.swift and update our unwindToList to take the data that AddTodoItemViewController.swift is holding and pop it into the array of todoItems: 
  ```
  func unwindToList(segue: UIStoryboardSegue) {
      var source = segue.sourceViewController as AddTodoItemViewController
      var todoItem:TodoItem = source.todoItem
      
      if todoItem != nil {
          self.todoItems += todoItem
          self.tableView.reloadData()
      }
  }
  ```
1. Checkpoint: Run your app - you should be able to add items!
