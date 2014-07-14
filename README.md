git-swift-todo-tutorial
=======================


## The Basics

##### Create your project
1. Open xCode
1. Under iOS > Application, select 'Single View Application' and click Next
1. Type 'Todo' as the Product Name, Swift as the Language, iPhone as the Devices, 'self' for Organization Identifier, and make sure Core Data is unchecked
1. Save into a folder of your choosing
1. Choose 'iPhone 4s' from the selection of devices at the top left of xCode
1. Checkpoint: Hit the run button on the top left of xCode - you should see a blank white screen

<insert blurb about the xcode landing screen>

<skippable?>
  ##### Add a label to your storyboard
  1. In the Project Navigator on the far left of xCode, select Main.storyboard
  <you should see one view controller>
  <trim next line to just 'open object library?'>
  1. Find the Object Library at the bottom of the Utilities panel which is on the far right of xCode (To open the library with a menu command, choose View > Utilities > Show Object Library)
  <if you don't see the utilities panel, click the Utilities button at the top right)
  1. At the bottom is a search panel. Find or search for 'Label' and drag one into the center of your View using the guides to center it
  1. Double click the label to edit the text
  1. Type 'Hello World'
  1. Checkpoint: Hit the run button on the top left of xCode - you should see a blank white screen with 'Hello World' in the center

  ##### Remove label
</skippable?>

##### Add a textfield to your storyboard
1. In the Project Navigator on the far left of xCode, select Main.storyboard
<you should see one view controller>
1. Find the Object Library at the bottom of the Utilities panel (which is on the far right of xCode)
<if you don't see the utilities panel, click the Utilities button at the top right)
1. At the bottom is a search panel. Find or search for 'Text Field'
1. Drag one to the furthest left guider on your View, about 1/3 from the top of your view
1. Increase the width of the text field by dragging the right side of the text view to the rightmost guider
1. Next, let's change the placeholder text
  1. In the Utilities Slider on the right side of Xcode, find the Attributes Inspector (4th icon on the top bar from the left)
  1. Enter 'new todo' next to 'Placeholder'
1. Checkpoint: Hit the run button on the top left of xCode - you should see a blank white screen with a text field that says 'New Todo' (don't worry if the text field goes off of the screen)

## The storyboard

<insert blurb about rotating the screen and width not changing>

##### Position text field using Auto Layout
1. In the Project Navigator on the far left of xCode, select Main.storyboard
1. Click on the Text Field in the View
1. Set top space on the top
  1. Control+Click and Drag from the Text Field to the area right above, which should highlight blue and say 'View'
  1. Release your drag <reword>
  1. Select 'Top Space to Top Layout Guide' from the small black menu
1. Set leading space on the left
  1. Control+Click and Drag from the Text Field to the area left of the view, which should highlight blue and say 'View'
  1. Release your drag <reword>
  1. Select 'Leading Space to Container' from the small black menu
1. Set Trailing space on the right
  1. Control+Click and Drag from the Text Field to the area right of the view, which should highlight blue and say 'View'
  1. Release your drag <reword>
  1. Select 'Trailing Space to Container' from the small black menu
1. Checkpoint: Hit the run button on the top left of xCode
  1. You should see the Text Field with equal spacing on each side and spacing from the top bar
  1. On the top bar of your computer click 'Hardware' and click 'Rotate Left' to enter landscape view
  1. The spacing from the left, right, and top sides should match the portrait view

##### Create a table view controller
1. In the Project Navigator on the far left of xCode, select Main.storyboard
1. Drag a table view controller and drop it into the canvas
<if you don't have enough space zoom out>
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

<insert blurb about navigation etc>

<ignore and resolve later>
  ###### Update layout constraints
  You may have noticed some warnings about ambiguous layout sizing. Let's resolve those now.

  1. 
</ignore>

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












