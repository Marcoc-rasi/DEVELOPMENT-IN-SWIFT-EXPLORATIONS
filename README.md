# DEVELOPMENT-WITH-SWIFT-EXPLORATIONS

I started by exploring the fundamental concepts of programming in Swift and understood the impact that apps have on society and culture. The study units were divided into four parts: values, algorithms, data organization, and app building. In the first unit, I gained knowledge about how values, such as text and numbers, flow through my code and how to assign names to them using variables. In the second unit, I delved into code structure, learning to use functions to automate repetitive tasks and make decisions with if/else statements. The third unit focused on data organization, where I learned to create custom types with structures, group data into arrays, and process it with loops. Additionally, I explored how enumerations represent related sets of values. The culmination of this stage was creating an interactive game with colorful shapes. Finally, in the fourth unit, I solidified my app-building skills from scratch using Xcode and Interface Builder. I learned to design user interfaces, connect elements to my code, and respond to user interactions. 

 # Photo Frame
 
 ![1-PhotoFrame-Marcocrasi (2)](https://github.com/Marcoc-rasi/DEVELOPMENT-WITH-SWIFT-EXPLORATIONS/assets/51039101/1de4e7c5-7f70-48a1-af8b-6a5fcc8edd89)

I added an image to my storyboard by dragging an `Image View` and assigning the desired image in the attributes panel. It's important to note that images should be added to the `Assets.xcassets` folder in the project first. To change the background color of the view, I selected the main view and adjusted the `Background` or `Background Color` property in the attributes panel. Then, I verified that the elements were correctly positioned with appropriate constraints. Finally, I saved the storyboard, ensuring that the image and background color matched the overall design of the application.'

# Question Bot 

https://github.com/Marcoc-rasi/DEVELOPMENT-WITH-SWIFT-EXPLORATIONS/assets/51039101/946eacda-93fe-4e79-b84f-649e17c83366 

This code is for an iOS application that provides users with a straightforward conversational experience. The core of the application is the `ViewController` class, which serves as the primary view controller.

When users open the app, the `viewDidLoad()` method is automatically called, initiating the activation of the `questionField` text input, enabling users to start typing their questions right away.

Subsequently, when a user types a question and taps the "Ask" button, the `askButtonTapped(_:)` method is invoked. This method checks if the text input is not empty, and, if it isn't, it hides the keyboard using `questionField.resignFirstResponder()`, allowing the code to proceed.

The user's input question is sent to the `respondToQuestion(_:)` method, which leverages an instance of `MyQuestionAnswerer` to produce a response. The response engine, `MyQuestionAnswerer`, implements conditional response rules: if the question begins with certain keywords such as "hello there," "where should I go on holiday," "where can I find the North Pole," or "where are the cookies," it returns specific responses. If the question doesn't match these patterns, it performs a more generalized analysis. If the question's length is an odd number of characters, it responds with a default message indicating the complexity of the question. When the question's length is even, it provides another default response indicating that the answer is unknown.

The generated response from `MyQuestionAnswerer` is displayed on the `responseLabel` user interface element, delivering the answer to the user. The "Ask" button is temporarily disabled to prevent repeated questions, and the placeholder text in `questionField` changes to encourage the user to ask another question.

Additionally, the extension of `ViewController` conforms to `UITextFieldDelegate` to manage events related to the text input. It handles actions like hiding the keyboard when the "Return" key is pressed and dynamically enabling or disabling the "Ask" button based on whether there is text in the input field. This enhances the usability and user interaction.

In summary, this code creates a simple conversational interface where users can pose questions and receive responses using a custom response engine. The user interface responds effectively to user interactions, and the underlying logic is encapsulated within the `MyQuestionAnswerer` structure.

# Bouncy Balll 

https://github.com/Marcoc-rasi/DEVELOPMENT-WITH-SWIFT-EXPLORATIONS/assets/51039101/fd0c86fe-f8cd-4104-8653-ce3751d1c9e4 

The code is contained within a class named `ViewController`, responsible for managing the interface and presentation of the game. This class defines essential properties such as `shapeScene`, `container`, and `sceneView`. The `shapeScene` property stores an instance of `ShapeScene`, representing the game scene in SpriteKit. `container` is a view that acts as a container to display the game scene view (`sceneView`). Additionally, the computed property `presentationContext` is used to handle the presentation of **alerts** in the application.

The `loadView()` method is used to configure the view hierarchy in the controller. In this method, a light gray background is set for `container`, and the SpriteKit view (`sceneView`) is attached to this container view. Constraints are then applied to ensure that `sceneView` occupies all available space in the view.

The `preferredScreenEdgesDeferringSystemGestures` method defines which screen edges should defer system gestures. In this case, the bottom edge of the screen is chosen, which can be useful to avoid interruptions from system gestures during gameplay.

The `viewDidLoad()` method is critical for setting up the **game scene**. Here, the `ShapeScene` instance (`shapeScene`) is initialized with the size of the controller's view, and the scale mode is set. Furthermore, the current controller is assigned as the alert delegate for the scene, enabling the management of alerts that may appear during the game.

The `viewDidAppear(_:)` method is called when the controller's view is displayed on the screen. At this point, the `setup()` function is invoked to configure the game.

The `viewDidLayoutSubviews()` method is used to adjust the scene's size when the controller's view size changes. This is important to ensure that the scene fits properly on the screen, which is essential for a game involving precise movements and collisions.

In summary, this code provides the basic structure for an **iOS game application** where a ball must bounce off a shape and navigate through obstacles to win. The controller takes care of setting up the game scene, managing alerts, and on-screen presentation. This approach establishes a solid foundation for creating and managing interactive games on the iOS platform.

# Color Mix 

https://github.com/Marcoc-rasi/DEVELOPMENT-WITH-SWIFT-EXPLORATIONS/assets/51039101/6d9c5c93-ab29-480f-91d2-ec0a7ffd84fb 

iOS application that allows users to mix colors by adjusting **switches** and **sliders**. This controller is used to manage the application's view and the interaction with user interface elements.

The **ViewController class** inherits from `UIViewController`, the base class for view controllers in iOS. In this class, properties are declared for various UI elements, such as a `UIView` called `colorView`, three `UISwitches` (redSwitch, greenSwitch, blueSwitch), and three `UISliders` (redSlider, greenSlider, blueSlider).

The **`viewDidLoad()`** function is automatically called when the view controlled by this view controller is loaded into memory. In this method, the appearance of `colorView` is configured by setting a border, rounded corners, and a border color. Then, two methods, **`updateColor()`** and **`updateControls()`**, are called to update the color of `colorView` and enable/disable the sliders based on the state of the switches.

The **`switchChanged(_:)`** function is an action method (IBAction) that is called when the value of any of the switches is changed. This method calls **`updateColor()`** and **`updateControls()`** to reflect changes in color and slider enablement.

**`updateColor()`** is a function that calculates a color based on the values of the switches and sliders. The red, green, and blue intensities are set depending on the state of the switches and the slider values. Then, a **`UIColor`** object is created with these color components and set as the background color of `colorView`.

**`updateControls()`** is a function that enables or disables the sliders based on the state of the switches. If a switch is turned off, the corresponding slider is disabled.

The **`sliderChanged(_:)`** function is an action method that is called when the value of any of the sliders is changed. This method calls **`updateColor()`** to update the color based on the new slider values.

**`reset(_:)`** is an action function called when a "Reset" button is tapped. This function resets all switches to the off position and sets slider values to 1. It then calls **`updateColor()`** and **`updateControls()`** to reflect these changes.

In summary, this code controls a view that allows users to customize color mixing by adjusting switches and sliders and provides a reset function to return to the initial configuration.

# Chat Bot 

https://github.com/Marcoc-rasi/DEVELOPMENT-WITH-SWIFT-EXPLORATIONS/assets/51039101/d28a5e25-d0c9-45f2-9705-69ad25d417ae 

In the provided code, there is an iOS application that simulates a **conversation** between the user and a **bot**. The functionality is broken down into several key classes and structures:

The **`ConversationDataSource` class** manages the conversation data. This class provides methods to add both **questions** and **answers** to the conversation. The number of messages in the conversation is obtained through the **`messageCount`** property, and messages are stored in an array called **`messages`**. The primary purpose of this class is to provide a data source for the conversation.

The **`ConversationDelegate` class** is used to generate **responses to questions**. The **`responseTo`** function takes a question as input and returns a response based on the content of the question. Predefined responses are included for certain question patterns.

The **`ConversationViewController` class** acts as the main view controller. It uses instances of `ConversationDelegate` and `ConversationDataSource` to manage the conversation. When the user enters a question, the **`respondToQuestion`** function is triggered. This function handles the logic of adding questions and answers to the conversation, with a "thinking" period before providing a response. The **ThinkingCell** is used to visually indicate that the application is "thinking."

Additionally, there is a **`Message` structure** set up to represent messages in the conversation. Each message has a date, text, and type (question or answer). An initial **welcome message** named **`openingLine`** is provided.

In summary, this code creates an application that simulates a conversation with a bot. Messages are managed through interconnected classes and structures, and predefined responses are included for certain question patterns. The application visualizes the "thinking" process while generating responses to user questions.

# RPS 

https://github.com/Marcoc-rasi/DEVELOPMENT-WITH-SWIFT-EXPLORATIONS/assets/51039101/44fa0ae4-a052-4d73-96f2-6a5232dbf77a 

The code snippet you've shared is the implementation of a **"Rock, Paper, Scissors"** game application in Swift, using the UIKit user interface for iOS. This application consists of three main parts: the `GameState.swift` file, the `Sign.swift` file, and the `ViewController.swift` file.

**GameState.swift** defines an enumeration named `GameState`, representing the possible states of the game. These states are **"Start"** (beginning), **"Victory"** (win), **"Lose"** (loss), and **"Tie"** (draw). Each state has a `stateDescription` property that provides a human-readable description.

**Sign.swift** contains the definition of the `Sign` enumeration, representing the three game options: **"Scissors,"** **"Rock,"** and **"Paper."** Each option has a corresponding **emoji** and a `gameResult` method that determines the game's outcome based on the player's and opponent's choices.

In **ViewController.swift**, you'll find the `ViewController` class, which handles the application's user interface. Interface elements such as labels and buttons are connected to properties within the class. The `viewDidLoad` function initializes the user interface when the view loads, and button event-handling methods allow the player to make their choice and restart the game.

The `updateUI` function updates the user interface based on the game's state, changing the background color and showing/hiding buttons as necessary. Additionally, it displays the current game state and the opponent's emoji.

The `play` method represents the game logic. It takes the player's choice, generates a random choice for the opponent, and calculates the game's result using the `gameResult` method. Then, it updates the user interface with the result and displays the opponent's emoji. Finally, it disables the player's choice buttons and shows the "Play Again" button to allow the player to restart the game.

Collectively, this code provides a complete gaming experience for "Rock, Paper, Scissors" on an iOS application, with visual representations of the choices, status messages, and functionality for playing and restarting. The application uses emojis and background colors to enhance the gaming experience.

# Meme Maker 

https://github.com/Marcoc-rasi/DEVELOPMENT-WITH-SWIFT-EXPLORATIONS/assets/51039101/5ffceadf-a957-408e-9454-634410170566 

The code begins by importing the UIKit module, which provides the necessary classes and functions for developing iOS applications.

Next, it defines the class `ViewController`, which inherits from `UIViewController`. This inheritance signifies that this class will act as a view controller in the application's view hierarchy.

Within the class, several UI properties and objects are created, which are connected to UI elements in the corresponding view interface file, likely a .xib or .storyboard file. These elements include:

- `topSegmentedControl` and `bottomSegmentedControl`: Two `UISegmentedControl` objects that allow the user to select options for the top and bottom portions of a meme.

- `topCaptionLabel` and `bottomCaptionLabel`: Two `UILabel` objects that will display the meme captions at the top and bottom of the meme image.

Two arrays, `topChoices` and `bottomChoices, are defined to store instances of the `CaptionOption` structure. Each array contains options for meme captions along with related emojis.

The `viewDidLoad()` method is responsible for configuring the UI elements and setting the initial text of the UILabel elements based on the selection made in the `UISegmentedControl`. It also performs the following actions:

- Removes previous segments in the segmented controls using `removeAllSegments()`.

- Then, it inserts new segments into the controls using the information stored in the `topChoices` and `bottomChoices` arrays.

The `segmentedControlValueChanged(_:)` method is triggered when the user changes the selection in one of the segmented controls. Depending on whether the top or bottom segmented control sends the action, `changeLabelChoice` is called to update the corresponding caption.

The `dragTopLabel(_:)` and `dragBottomLabel(_:)` methods allow dragging the top and bottom caption labels when the user performs a dragging gesture.

The `changeLabelChoice(segmentedControl:label:choices:)` method updates the text of the corresponding label with the selected caption from the segmented control.

In summary, this code is part of a meme creation application that enables users to select emojis and captions for the top and bottom parts of an image and view the resulting meme.

# Element Quiz 

https://github.com/Marcoc-rasi/DEVELOPMENT-WITH-SWIFT-EXPLORATIONS/assets/51039101/d09975cb-aa62-43b0-bca0-33f6202fef71 


