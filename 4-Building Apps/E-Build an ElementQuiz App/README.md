# Build an ElementQuiz App

## What You’ll Build
An app for studying chemical elements with flash cards and a quiz.

## What You’ll Learn
- How to create and display images in code.
- How to use the single-path UI update pattern to manage your UI code.
- How to get text from the keyboard.
- How to display an alert and respond when its button is tapped.

## Key Vocabulary
- `Alert`: A graphical user interface element used to provide the user with information or prompt them for input.
- `Steps to reproduce`: Detailed instructions on how to recreate a specific issue or problem.
- `Text field`: An input field that allows users to enter or edit text.


## Introduction
Your previous app projects have ranged from simple to complex, focusing on different elements of development. You've thought through the brains and logic of an app, as well as the user interface elements for presenting data and gathering user input. In this project, you'll apply all those skills to build an app that quizzes users on the elements of the periodic table.
You'll start with a flash card–style interface. The user will see the element symbol and atomic weight, and can tap a button to reveal the name of the element. Next, you'll create a quiz mode, enabling the user to input the correct element name and to receive a score at the end.

# Element Quiz 

https://github.com/Marcoc-rasi/DEVELOPMENT-WITH-SWIFT-EXPLORATIONS/assets/51039101/662a4cb1-13af-42cf-a07a-b0d82e7c43c3

This code is an implementation of an **iOS application** that allows you to study **chemical elements** using flashcards and take a **quiz** to assess your knowledge. The `ViewController` class is the central piece of the application, handling both the **logic** and the **user interface**.

The application enables users to switch between two **study modes** represented by the `Mode` enum: **flashcard** and **quiz**. It also keeps track of the current state, defined by the `State` enum, which can be **question**, **answer**, or **score**.

Various **button actions** are used to interact with the application, including `showAnswer(_:)` to reveal the answer in flashcard mode, `next(_:)` to move to the next element or display the score in quiz mode, and `switchModes(_:)` to toggle between the two modes.

The **user interface** is updated based on the current state and mode. For instance, in **flashcard mode**, the interface displays an image of the chemical element and allows the user to show the answer, while in **quiz mode**, a text field is provided for the user to respond, and it shows whether the answer is correct or incorrect. In quiz mode, it keeps track of correct answers and displays the score at the end.

Furthermore, the code handles user input through the `textFieldShouldReturn(_:)` function, which checks if the entered response is correct and updates the interface accordingly. When the user finishes the quiz, an alert displaying the score is shown.

In summary, this code is a **chemical element study application** that offers two study modes (flashcard and quiz) and provides an interactive user interface to help the user learn and evaluate their knowledge. The application logic and user interface are comprehensively managed, and the code includes functions to set up new study sessions based on the user's chosen mode.
