# DEVELOPMENT-WITH-SWIFT-EXPLORATIONS

I started by exploring the fundamental concepts of programming in Swift and understood the impact that apps have on society and culture. The study units were divided into four parts: values, algorithms, data organization, and app building. In the first unit, I gained knowledge about how values, such as text and numbers, flow through my code and how to assign names to them using variables. In the second unit, I delved into code structure, learning to use functions to automate repetitive tasks and make decisions with if/else statements. The third unit focused on data organization, where I learned to create custom types with structures, group data into arrays, and process it with loops. Additionally, I explored how enumerations represent related sets of values. The culmination of this stage was creating an interactive game with colorful shapes. Finally, in the fourth unit, I solidified my app-building skills from scratch using Xcode and Interface Builder. I learned to design user interfaces, connect elements to my code, and respond to user interactions. 

 # Photo Frame
 
 ![1-PhotoFrame-Marcocrasi (2)](https://github.com/Marcoc-rasi/DEVELOPMENT-WITH-SWIFT-EXPLORATIONS/assets/51039101/1de4e7c5-7f70-48a1-af8b-6a5fcc8edd89)

I added an image to my storyboard by dragging an "Image View" and assigning the desired image in the attributes panel. It's important to note that images should be added to the "Assets.xcassets" folder in the project first. To change the background color of the view, I selected the main view and adjusted the "Background" or "Background Color" property in the attributes panel. Then, I verified that the elements were correctly positioned with appropriate constraints. Finally, I saved the storyboard, ensuring that the image and background color matched the overall design of the application.

# Question Bot 

https://github.com/Marcoc-rasi/DEVELOPMENT-WITH-SWIFT-EXPLORATIONS/assets/51039101/946eacda-93fe-4e79-b84f-649e17c83366 

This code is for an iOS application that provides users with a straightforward conversational experience. The core of the application is the ViewController class, which serves as the primary view controller.

When users open the app, the viewDidLoad() method is automatically called, initiating the activation of the questionField text input, enabling users to start typing their questions right away.

Subsequently, when a user types a question and taps the "Ask" button, the askButtonTapped(_:) method is invoked. This method checks if the text input is not empty, and, if it isn't, it hides the keyboard using questionField.resignFirstResponder(), allowing the code to proceed.

The user's input question is sent to the respondToQuestion(_:) method, which leverages an instance of MyQuestionAnswerer to produce a response. The response engine, MyQuestionAnswerer, implements conditional response rules: if the question begins with certain keywords such as "hello there," "where should I go on holiday," "where can I find the North Pole," or "where are the cookies," it returns specific responses. If the question doesn't match these patterns, it performs a more generalized analysis. If the question's length is an odd number of characters, it responds with a default message indicating the complexity of the question. When the question's length is even, it provides another default response indicating that the answer is unknown.

The generated response from MyQuestionAnswerer is displayed on the responseLabel user interface element, delivering the answer to the user. The "Ask" button is temporarily disabled to prevent repeated questions, and the placeholder text in questionField changes to encourage the user to ask another question.

Additionally, the extension of ViewController conforms to UITextFieldDelegate to manage events related to the text input. It handles actions like hiding the keyboard when the "Return" key is pressed and dynamically enabling or disabling the "Ask" button based on whether there is text in the input field. This enhances the usability and user interaction.

In summary, this code creates a simple conversational interface where users can pose questions and receive responses using a custom response engine. The user interface responds effectively to user interactions, and the underlying logic is encapsulated within the MyQuestionAnswerer structure.

# Bouncy Balll 

https://github.com/Marcoc-rasi/DEVELOPMENT-WITH-SWIFT-EXPLORATIONS/assets/51039101/fd0c86fe-f8cd-4104-8653-ce3751d1c9e4 

# Color Mix 

https://github.com/Marcoc-rasi/DEVELOPMENT-WITH-SWIFT-EXPLORATIONS/assets/51039101/6d9c5c93-ab29-480f-91d2-ec0a7ffd84fb 

# Chat Bot 

https://github.com/Marcoc-rasi/DEVELOPMENT-WITH-SWIFT-EXPLORATIONS/assets/51039101/d28a5e25-d0c9-45f2-9705-69ad25d417ae 

# RPS 

https://github.com/Marcoc-rasi/DEVELOPMENT-WITH-SWIFT-EXPLORATIONS/assets/51039101/44fa0ae4-a052-4d73-96f2-6a5232dbf77a 

# Meme Maker 

https://github.com/Marcoc-rasi/DEVELOPMENT-WITH-SWIFT-EXPLORATIONS/assets/51039101/5ffceadf-a957-408e-9454-634410170566 

# Element Quiz 

https://github.com/Marcoc-rasi/DEVELOPMENT-WITH-SWIFT-EXPLORATIONS/assets/51039101/d09975cb-aa62-43b0-bca0-33f6202fef71 

