# Color Picker

## What You’ll Build
A color-picker app.

## What You’ll Learn
- How to connect your app’s interface to your Swift code.
- How to change your app’s display from Swift code.
- How to use switches, sliders, and a button in your app interface.

## Key Vocabulary
- `Action`: A method that gets triggered when a specific event occurs, like a button press.
- `CGFloat`: A data type in Swift representing floating-point numbers, commonly used for graphical calculations.
- `Enabled, Disabled`: Refers to whether a user interface element can be interacted with or not.
- `Outlet`: A connection between a user interface element and Swift code, allowing code to reference and modify the element.
- `Slider`: A user interface element that allows users to select a value from a continuous range.
- `Switch`: A user interface element that toggles between two states, usually on/off.

## Introduction
When you develop an app, you write Swift code and build your UI in a storyboard. In order for the two to work together, they must be connected with actions and outlets. In this lesson, you’ll learn how to connect Swift code to the views and `controls` you create in a storyboard, so your code is able to respond to the user’s actions. Your app sees these actions as `events`—information about what happened and when it happened.
There are two kinds of connections between storyboards and code:
Outlets connect variables in your code to objects in the storyboard, so you can access those objects from your code and get information or make changes to them when the app is running.
Actions connect controls like `switches` and buttons to methods in your code, so tapping a button, for example, will run a particular method.

Your project will be to use outlets and actions to create an app that generates colors by mixing red, green, and blue. You'll use incremental development to make your work manageable. You first encountered incremental development in the BouncyBall app, and it's equally important in this complex project.

- **`Part one`**: Learn how to use outlets to connect objects in the storyboard to your code, so you can access them when your app is running.
- **`Part two`**: Learn how to connect actions from a switch in the storyboard to your code, so that a piece of code is run when the user changes the switch.
- **`Part three`**: Create multiple switches, and use actions and outlets to display a color based on the on/off status of each switch.
- **`Part four`**: Add sliders to allow more precise color control.
- **`Part five`**: Add a reset button to set the switches and sliders back to their original values.
- **`Part six`**: Polish the user interface to make the purpose of the switches and sliders easy to understand. 

# Color Mix 

https://github.com/Marcoc-rasi/DEVELOPMENT-WITH-SWIFT-EXPLORATIONS/assets/51039101/88deed20-1e8a-46f2-8577-1b1320802663

iOS application that allows users to mix colors by adjusting **switches** and **sliders**. This controller is used to manage the application's view and the interaction with user interface elements.

The **ViewController class** inherits from `UIViewController`, the base class for view controllers in iOS. In this class, properties are declared for various UI elements, such as a `UIView` called `colorView`, three `UISwitches` (redSwitch, greenSwitch, blueSwitch), and three `UISliders` (redSlider, greenSlider, blueSlider).

The **`viewDidLoad()`** function is automatically called when the view controlled by this view controller is loaded into memory. In this method, the appearance of `colorView` is configured by setting a border, rounded corners, and a border color. Then, two methods, **`updateColor()`** and **`updateControls()`**, are called to update the color of `colorView` and enable/disable the sliders based on the state of the switches.

The **`switchChanged(_:)`** function is an action method (IBAction) that is called when the value of any of the switches is changed. This method calls **`updateColor()`** and **`updateControls()`** to reflect changes in color and slider enablement.

**`updateColor()`** is a function that calculates a color based on the values of the switches and sliders. The red, green, and blue intensities are set depending on the state of the switches and the slider values. Then, a **`UIColor`** object is created with these color components and set as the background color of `colorView`.

**`updateControls()`** is a function that enables or disables the sliders based on the state of the switches. If a switch is turned off, the corresponding slider is disabled.

The **`sliderChanged(_:)`** function is an action method that is called when the value of any of the sliders is changed. This method calls **`updateColor()`** to update the color based on the new slider values.

**`reset(_:)`** is an action function called when a "Reset" button is tapped. This function resets all switches to the off position and sets slider values to 1. It then calls **`updateColor()`** and **`updateControls()`** to reflect these changes.

In summary, this code controls a view that allows users to customize color mixing by adjusting switches and sliders and provides a reset function to return to the initial configuration.

