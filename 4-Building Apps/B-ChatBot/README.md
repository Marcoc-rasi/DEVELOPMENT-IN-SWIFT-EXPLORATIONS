# ChatBot

## What You’ll Build
A data source object to keep track of a conversation between a user and a chat bot.

## What You’ll Learn
- How apps are built up from instances of different types working together.
- How data sources are used in iOS apps.

## Key Vocabulary
- `Cell`: A fundamental building block of a table view, representing a single item in the list.
- `Data source`: An object responsible for managing the data and providing information to a user interface component, like a table view.
- `Table view`: A user interface element that displays a list of items in a single column.

## Introduction
ChatBot is similar to the project you worked on in QuestionBot. Instead of asking a question, pressing a button, and getting an answer, you’ll build up a conversation, similar to a chat in the Messages app. 
In the screenshot you can see the following:
- A list of messages forming a conversation. 
- Messages entered by the user that look different from those given by the app.
- A “thinking” indicator.
- An entry area where the user can type a question.
In iOS apps, a scrolling list of items is known as a table view. Each item in the ​list is called a cell. (You may have heard the term “cell” when talking about spreadsheet programs.)

# Chat Bot 

https://github.com/Marcoc-rasi/DEVELOPMENT-WITH-SWIFT-EXPLORATIONS/assets/51039101/d28a5e25-d0c9-45f2-9705-69ad25d417ae 

In the provided code, there is an iOS application that simulates a **conversation** between the user and a **bot**. The functionality is broken down into several key classes and structures:

The **`ConversationDataSource` class** manages the conversation data. This class provides methods to add both **questions** and **answers** to the conversation. The number of messages in the conversation is obtained through the **`messageCount`** property, and messages are stored in an array called **`messages`**. The primary purpose of this class is to provide a data source for the conversation.

The **`ConversationDelegate` class** is used to generate **responses to questions**. The **`responseTo`** function takes a question as input and returns a response based on the content of the question. Predefined responses are included for certain question patterns.

The **`ConversationViewController` class** acts as the main view controller. It uses instances of `ConversationDelegate` and `ConversationDataSource` to manage the conversation. When the user enters a question, the **`respondToQuestion`** function is triggered. This function handles the logic of adding questions and answers to the conversation, with a "thinking" period before providing a response. The **ThinkingCell** is used to visually indicate that the application is "thinking."

Additionally, there is a **`Message` structure** set up to represent messages in the conversation. Each message has a date, text, and type (question or answer). An initial **welcome message** named **`openingLine`** is provided.

In summary, this code creates an application that simulates a conversation with a bot. Messages are managed through interconnected classes and structures, and predefined responses are included for certain question patterns. The application visualizes the "thinking" process while generating responses to user questions.

