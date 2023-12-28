# Building a Photo Frame Application

**What You Will Build**
An application that displays a photo.

**What You Will Learn**
How to use Xcode to build and run an application.

**Key Vocabulary**
- ``Asset Catalog``: A tool in Xcode for organizing and managing your app's media resources.
- ``Attributes Inspector``: A window in Xcode that allows you to adjust the properties and attributes of UI objects.
- ``Editor Area``: The section of Xcode where you write and edit your source code.
- ``Image View``: A UI component that displays an image in your app's interface.
- ``Project Navigator``: A window in Xcode that allows you to view and manage your project's files and resources.
- ``Simulator``: A tool in Xcode that simulates the environment of an iOS device on your computer for testing and debugging apps.
- ``Storyboard``: A visual representation of your app's user interface in Xcode.

**Introduction**
Now that you're becoming more comfortable with playgrounds, you might be wondering how to build an app that you can use on your iOS device, or even on your Apple Watch. Many moving parts must work together for an app to run, and Xcode is the best tool to bring them all together.
In this four-part lesson, you'll build PhotoFrame, a simple iOS app that displays a single photo. In the first part, you'll create a new app project from scratch. Then, you'll use Xcode to explore your project and learn how to navigate your coding environment.

In the third part, you'll add an image to your project. Finally, you'll create the user interface using Interface Builder, a powerful component of Xcode that features a storyboard for designing your app's screens, a library of UI objects, and many controls and settings for customizing them.
By the end of this lesson, your app will look like this, but it will display a photo of your choice.

# PhotoFrame

![1-PhotoFrame-Marcocrasi (2)](https://github.com/Marcoc-rasi/DEVELOPMENT-WITH-SWIFT-EXPLORATIONS/assets/51039101/1de4e7c5-7f70-48a1-af8b-6a5fcc8edd89)

I added an image to my storyboard by dragging an `Image View` and assigning the desired image in the attributes panel. It's important to note that images should be added to the `Assets.xcassets` folder in the project first. To change the background color of the view, I selected the main view and adjusted the `Background` or `Background Color` property in the attributes panel. Then, I verified that the elements were correctly positioned with appropriate constraints. Finally, I saved the storyboard, ensuring that the image and background color matched the overall design of the application.
