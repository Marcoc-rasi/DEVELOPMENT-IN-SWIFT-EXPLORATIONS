//
//  ViewController.swift
//  MemeMaker-Marcocrasi
//
//  Created by MacBook 28 on 23/05/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var topSegmentedControl: UISegmentedControl!
    @IBOutlet weak var bottomSegmentedControl: UISegmentedControl!
    @IBOutlet weak var topCaptionLabel: UILabel!
    @IBOutlet weak var bottomCaptionLabel: UILabel!
    let topChoices: [CaptionOption] = [
        CaptionOption(emoji: "🦄", caption: "Not sure if fat"),
        CaptionOption(emoji: "🤖", caption: "32 Tabs open"),
        CaptionOption(emoji: "👽", caption: "Not sure if i like the Futurama Fry meme")
    ]
    let bottomChoices: [CaptionOption] = [
        CaptionOption(emoji: "👾", caption: "Or diarreha"),
        CaptionOption(emoji: "☠️", caption: "Not sure where the sound is comes from"),
        CaptionOption(emoji: "🐉", caption: "Or just like Futurama")
    ]
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        // Top segmented control configuration
        topSegmentedControl.removeAllSegments()
        for choice in topChoices {
            topSegmentedControl.insertSegment(withTitle: choice.emoji, at: topChoices.count, animated: false)
        }
        topSegmentedControl.selectedSegmentIndex = 0
        // Bottom segmented control configuration
        bottomSegmentedControl.removeAllSegments()
        for choice in bottomChoices {
            bottomSegmentedControl.insertSegment(withTitle: choice.emoji, at: bottomChoices.count, animated: false)
        }
        bottomSegmentedControl.selectedSegmentIndex = 0
        changeLabelChoice(segmentedControl: topSegmentedControl, label: topCaptionLabel, choices: topChoices)
        changeLabelChoice(segmentedControl: bottomSegmentedControl, label: bottomCaptionLabel, choices: bottomChoices)
    }


    @IBAction func segmentedControlValueChanded(_ sender: UISegmentedControl) {
        if sender == topSegmentedControl {
            changeLabelChoice(segmentedControl: sender, label: topCaptionLabel, choices: topChoices)
        }else{
            changeLabelChoice(segmentedControl: sender, label: bottomCaptionLabel, choices: bottomChoices)
        }
    }
    
    @IBAction func dragTopLabel(_ sender: UIPanGestureRecognizer) {
        if sender.state == .changed {
            topCaptionLabel.center = sender.location(in: view)
        }
    }
    
    @IBAction func dragBottomLabel(_ sender: UIPanGestureRecognizer) {
        if sender.state == .changed {
            bottomCaptionLabel.center = sender.location(in: view)
        }
    }
    
    func changeLabelChoice(segmentedControl: UISegmentedControl, label: UILabel, choices: [CaptionOption]){
        label.text = choices[segmentedControl.selectedSegmentIndex].caption
    }
}

