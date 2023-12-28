# Build a BouncyBall App

## What You’ll Build
A game where players try to hit targets with a bouncing ball.

## What You’ll Learn
- What callbacks are and how they work.
- How to use a sophisticated API.
- How to employ incremental development to build a complex application piece by piece.
- How to refactor your code.

## Key Vocabulary
- **Incremental Development**: A software development strategy that involves building an application in stages, gradually increasing its capabilities, and testing the code at each step.
- **Callback**: A function passed as an argument to another function and executed after a specific event occurs.
- **Refactor**: The process of restructuring and improving existing code without changing its external behavior.

## Introduction
Until now, you've built simple applications with minimal code. In this lesson, you'll face the challenge of building a game that uses physics and touch interaction. It will look something like this:

In this lesson, you'll follow a common software development strategy called incremental development. You'll build the BouncyBall app in stages, each ending in a functional application. You'll run and test your code at each step, gradually increasing its capabilities.
You might think you could watch the game in the video and build the app all at once. But think again. It will be much easier to build the game step by step, increasing its complexity in manageable steps. Along the way, you can evaluate your code and make adjustments when necessary. And you can test after each step to make sure the game behaves as it should. Incremental development is a key technique that application developers use to manage their work.

# Bouncy Balll 

https://github.com/Marcoc-rasi/DEVELOPMENT-WITH-SWIFT-EXPLORATIONS/assets/51039101/d5b67d65-4425-4ced-8d7e-4dfea45fcc05

The code is contained within a class named `ViewController`, responsible for managing the interface and presentation of the game. This class defines essential properties such as `shapeScene`, `container`, and `sceneView`. The `shapeScene` property stores an instance of `ShapeScene`, representing the game scene in SpriteKit. `container` is a view that acts as a container to display the game scene view (`sceneView`). Additionally, the computed property `presentationContext` is used to handle the presentation of **alerts** in the application.

The `loadView()` method is used to configure the view hierarchy in the controller. In this method, a light gray background is set for `container`, and the SpriteKit view (`sceneView`) is attached to this container view. Constraints are then applied to ensure that `sceneView` occupies all available space in the view.

The `preferredScreenEdgesDeferringSystemGestures` method defines which screen edges should defer system gestures. In this case, the bottom edge of the screen is chosen, which can be useful to avoid interruptions from system gestures during gameplay.

The `viewDidLoad()` method is critical for setting up the **game scene**. Here, the `ShapeScene` instance (`shapeScene`) is initialized with the size of the controller's view, and the scale mode is set. Furthermore, the current controller is assigned as the alert delegate for the scene, enabling the management of alerts that may appear during the game.

The `viewDidAppear(_:)` method is called when the controller's view is displayed on the screen. At this point, the `setup()` function is invoked to configure the game.

The `viewDidLayoutSubviews()` method is used to adjust the scene's size when the controller's view size changes. This is important to ensure that the scene fits properly on the screen, which is essential for a game involving precise movements and collisions.

In summary, this code provides the basic structure for an **iOS game application** where a ball must bounce off a shape and navigate through obstacles to win. The controller takes care of setting up the game scene, managing alerts, and on-screen presentation. This approach establishes a solid foundation for creating and managing interactive games on the iOS platform.
