# MemeMaker
## Introduction
You’re going to build an app that lets you add fun captions to a photo. This is another opportunity to practice the Xcode and Swift skills you've learned throughout this course. The final app will look something like this

<img width="366" alt="MemeMaker reference image" src="https://github.com/Marcoc-rasi/DEVELOPMENT-WITH-SWIFT-EXPLORATIONS/assets/51039101/c549e72b-4c81-4171-a025-bc651d87f122">

Selecting any one of the emoji will change the text above and below its image, so you can mix and match statements to suit your mood.

# MemeMaker 

https://github.com/Marcoc-rasi/DEVELOPMENT-WITH-SWIFT-EXPLORATIONS/assets/51039101/aabeea93-a129-44cd-b633-e22cc7eaaa15

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


