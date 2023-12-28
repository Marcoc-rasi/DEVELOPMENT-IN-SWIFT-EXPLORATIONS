# Building a QuestionBot Application

## What You Will Build
The "brain" of a chat application that responds differently to different questions.

## What You Will Learn
How to take an idea you've coded in a playground and implement it in a real application.
How to make your application do different things in different situations.

## Key Vocabulary
- `Case`: A keyword used in Swift programming to define different options in an enumeration.
- `Default`: A keyword used in `switch` statements to provide a default case when specified conditions are not met.

## Introduction
In Building a Photo Frame App, you created an Xcode project from scratch. In this lesson, you'll add important functionalities to an app that is already in progress.
Many apps are built by teams of people working together: designers who think about the app's look and how it's used, and developers who write the code to make it happen. Often, different parts of an app can be worked on at the same time.
In this lesson, you are part of a team building a chat application called QuestionBot. Focusing only on one part of the app, your job is to work on the "brain" of QuestionBot, the part that decides how to respond to questions. Other parts of the app, the design, the user interface, the parts that take the question and display the answer, are already completed.
At the moment, the app doesn't respond to questions meaningfully. You'll build knowledge for the bot and a personality to go with it; you'll give the app behavior unique to your design.


# Question Bot 

[https://github.com/Marcoc-rasi/DEVELOPMENT-WITH-SWIFT-EXPLORATIONS/assets/51039101/946eacda-93fe-4e79-b84f-649e17c83366](https://github.com/Marcoc-rasi/DEVELOPMENT-WITH-SWIFT-EXPLORATIONS/assets/51039101/8364a4b0-af08-484d-9c37-4449f83b787e) 

This code is for an iOS application that provides users with a straightforward conversational experience. The core of the application is the `ViewController` class, which serves as the primary view controller.

When users open the app, the `viewDidLoad()` method is automatically called, initiating the activation of the `questionField` text input, enabling users to start typing their questions right away.

Subsequently, when a user types a question and taps the "Ask" button, the `askButtonTapped(_:)` method is invoked. This method checks if the text input is not empty, and, if it isn't, it hides the keyboard using `questionField.resignFirstResponder()`, allowing the code to proceed.

The user's input question is sent to the `respondToQuestion(_:)` method, which leverages an instance of `MyQuestionAnswerer` to produce a response. The response engine, `MyQuestionAnswerer`, implements conditional response rules: if the question begins with certain keywords such as "hello there," "where should I go on holiday," "where can I find the North Pole," or "where are the cookies," it returns specific responses. If the question doesn't match these patterns, it performs a more generalized analysis. If the question's length is an odd number of characters, it responds with a default message indicating the complexity of the question. When the question's length is even, it provides another default response indicating that the answer is unknown.

The generated response from `MyQuestionAnswerer` is displayed on the `responseLabel` user interface element, delivering the answer to the user. The "Ask" button is temporarily disabled to prevent repeated questions, and the placeholder text in `questionField` changes to encourage the user to ask another question.

Additionally, the extension of `ViewController` conforms to `UITextFieldDelegate` to manage events related to the text input. It handles actions like hiding the keyboard when the "Return" key is pressed and dynamically enabling or disabling the "Ask" button based on whether there is text in the input field. This enhances the usability and user interaction.

In summary, this code creates a simple conversational interface where users can pose questions and receive responses using a custom response engine. The user interface responds effectively to user interactions, and the underlying logic is encapsulated within the `MyQuestionAnswerer` structure.
