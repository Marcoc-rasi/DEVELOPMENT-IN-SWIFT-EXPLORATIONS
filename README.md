# DEVELOPMENT-WITH-SWIFT-EXPLORATIONS

I started by exploring the fundamental concepts of programming in Swift and understood the impact that apps have on society and culture. The study units were divided into four parts: values, algorithms, data organization, and app building. In the first unit, I gained knowledge about how values, such as text and numbers, flow through my code and how to assign names to them using variables. In the second unit, I delved into code structure, learning to use functions to automate repetitive tasks and make decisions with if/else statements. The third unit focused on data organization, where I learned to create custom types with structures, group data into arrays, and process it with loops. Additionally, I explored how enumerations represent related sets of values. The culmination of this stage was creating an interactive game with colorful shapes. Finally, in the fourth unit, I solidified my app-building skills from scratch using Xcode and Interface Builder. I learned to design user interfaces, connect elements to my code, and respond to user interactions. 

 # Photo Frame
 
 ![1-PhotoFrame-Marcocrasi (2)](https://github.com/Marcoc-rasi/DEVELOPMENT-WITH-SWIFT-EXPLORATIONS/assets/51039101/1de4e7c5-7f70-48a1-af8b-6a5fcc8edd89)

Mis disculpas por la confusión. Aquí está el texto con comillas simples en lugar de comillas dobles:

I added an image to my storyboard by dragging an `Image View` and assigning the desired image in the attributes panel. It's important to note that images should be added to the `Assets.xcassets` folder in the project first. To change the background color of the view, I selected the main view and adjusted the `Background` or `Background Color` property in the attributes panel. Then, I verified that the elements were correctly positioned with appropriate constraints. Finally, I saved the storyboard, ensuring that the image and background color matched the overall design of the application.'

# Question Bot 

https://github.com/Marcoc-rasi/DEVELOPMENT-WITH-SWIFT-EXPLORATIONS/assets/51039101/946eacda-93fe-4e79-b84f-649e17c83366 

Certainly, here's the explanation in continuous text format, translated into English:

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

# RPS 

https://github.com/Marcoc-rasi/DEVELOPMENT-WITH-SWIFT-EXPLORATIONS/assets/51039101/44fa0ae4-a052-4d73-96f2-6a5232dbf77a 

# Meme Maker 

https://github.com/Marcoc-rasi/DEVELOPMENT-WITH-SWIFT-EXPLORATIONS/assets/51039101/5ffceadf-a957-408e-9454-634410170566 

# Element Quiz 

https://github.com/Marcoc-rasi/DEVELOPMENT-WITH-SWIFT-EXPLORATIONS/assets/51039101/d09975cb-aa62-43b0-bca0-33f6202fef71 

