//
//  ViewController.swift
//  ElemenQuiz-Marcocrasi
//
//  Created by MacBook 28 on 23/05/23.
//

import UIKit

enum Mode {
    case flashCard
    case quiz
}

enum State {
    case question
    case answer
    case score
}
class ViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var answerLabel: UILabel!
    @IBOutlet weak var modeSelector: UISegmentedControl!
    @IBOutlet weak var textField: UITextField!
    
    @IBOutlet weak var showAnwerButton: UIButton!
    @IBOutlet weak var nextButton: UIButton!
    
    var elementList = [String]()
    let fixedElementList = ["Carbon", "Gold", "Chlorine", "Sodium"]
    var currentElementIndex = 0
    var mode:Mode = .flashCard {
        didSet {
            switch mode {
            case .flashCard:
                setupFlashCards()
            case .quiz:
                setupQuiz()
            }
            updateUI()
        }
    }
    var state:State = .question
    var answerIsCorrect = false
    var correctAnswerCount = 0
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        mode = .flashCard
    }

    @IBAction func showAnswer(_ sender: Any) {
        state = .answer
        
        updateUI()
    }
    
    @IBAction func next(_ sender: Any) {
        currentElementIndex += 1
        if currentElementIndex >= elementList.count {
            currentElementIndex = 0
            if mode == .quiz {
                state = .score
                updateUI()
                return
            }
        }
        
        state = .question
        
        updateUI()
    }
    
    @IBAction func switchModes(_ sender: Any) {
        if modeSelector.selectedSegmentIndex == 0 {
            mode = .flashCard
        } else {
            mode = .quiz
        }
    }
    
    func updateFlashCardUI(elementName: String) {
        //Updating the application user  interface in flash card mode
        //Text Field and keyboard
        textField.isHidden = true
        textField.resignFirstResponder()
        
        //Answer label
        if state == .answer{
            answerLabel.text = elementName
        }
        else{
            answerLabel.text = "?"
        }
        
        //Segment Control
        modeSelector.selectedSegmentIndex = 0
        //button
        showAnwerButton.isHidden = false
        nextButton.isEnabled = true
        nextButton.setTitle("Next Element", for: .normal)
    }
    //Updating the application user  interface in Quiz mode
    func updateQuizUI(elementName: String){
        //Text field and keyboard
        textField.isHidden = false
        switch state {
        case .question:
            textField.isEnabled = true
            textField.text = ""
            textField.becomeFirstResponder()
        case .answer:
            textField.isEnabled = false
            textField.resignFirstResponder()
        case .score:
            textField.isHidden = true
            //textField.text = ""
            textField.resignFirstResponder()
        }
        
        switch state {
        case .question:
            answerLabel.text = ""
        case .answer:
            if answerIsCorrect {
                answerLabel.text = "¡Correcto!"
            } else {
                answerLabel.text = "❌\nCorrect Answer: " + elementName
            }
        case .score:
            answerLabel.text = ""
            print("Your score is \(correctAnswerCount) of \(elementList.count).")
        }
        
        if state == .score {
            displayScoreAlert()
        }
        //Segment Control
        modeSelector.selectedSegmentIndex = 1
        //button
        showAnwerButton.isHidden = true
        if currentElementIndex == elementList.count - 1 {
            nextButton.setTitle("Show score", for: .normal)
        } else {
            nextButton.setTitle("Next Question", for: .normal)
        }
        
        switch state {
        case .question:
            nextButton.isEnabled = false
        case .answer:
            nextButton.isEnabled = true
        case .score:
            nextButton.isEnabled = false
        }
    }
    
    func updateUI(){
        //Code sharing: updating the image
        let elementName = elementList[currentElementIndex]
        let image = UIImage(named: elementName)
        imageView.image = image
        
        switch mode {
        case .flashCard:
            updateFlashCardUI(elementName: elementName)
        case .quiz:
            updateQuizUI(elementName: elementName)
        }
        
    }

    //Is executed after the user presses the return key on the keyboard.
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        //get the text from the text field
        let textFieldContents = textField.text
        
        //determines if the user answered correctly and updates the status of the corresponding questionnaire
        if textFieldContents?.lowercased() == elementList[currentElementIndex].lowercased() {
            answerIsCorrect = true
            correctAnswerCount += 1
        } else {
            answerIsCorrect = false
        }
        
        //now, the app should show the response to the user
        state = .answer
        
        updateUI()
        
        return true
    }
    //displays an iOS alert with the user's quiz score received
    func displayScoreAlert(){
        let alert = UIAlertController(title: "Quiz score", message: "Your score is \(correctAnswerCount) de \(elementList.count)", preferredStyle: .alert)
        
        let dismissAction = UIAlertAction(title: "OK", style: .default, handler: scoreAlertDissmised(_:))
        alert.addAction(dismissAction)
        
        present(alert, animated: true, completion: nil)
    }
    
    func scoreAlertDissmised(_ action: UIAlertAction) {
        mode = .flashCard
    }
    
    //Sets up a new session of flash cards
    func setupFlashCards(){
        state = .question
        currentElementIndex = 0
        elementList = fixedElementList
    }
    
    //Sets up a new quiz
    func setupQuiz() {
        state = .question
        currentElementIndex = 0
        answerIsCorrect = false
        correctAnswerCount = 0
        elementList = fixedElementList.shuffled()
    }
}

