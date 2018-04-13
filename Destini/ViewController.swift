//
//  ViewController.swift
//  Destini
//
//  Created by Philipp Muellauer on 01/09/2015.
//  Copyright (c) 2015 London App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var topButton: UIButton!
    @IBOutlet weak var bottomButton: UIButton!
    @IBOutlet weak var storyTextView: UILabel!
    
    let allStories = StoryBank()
    var currentStory: Story!
    var answerSelected: Answer!
    var storyIndex: Int!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        start()
    }
    
    @IBAction func buttonPressed(_ sender: UIButton) {
        
        if(sender.tag == 1) {
            answerSelected = currentStory.answers![0]
        } else if (sender.tag == 2) {
            answerSelected = currentStory.answers![1]
        }
        
        nextStory()
        updateUI()
    }
    
    func updateUI() {
        storyTextView.text = currentStory.storyText
        
        if currentStory.answers?.count == 2 {
            hiddenButtons(hidden: false)
            
            topButton.setTitle(currentStory.answers![0].answerText, for: .normal)
            bottomButton.setTitle(currentStory.answers![1].answerText, for: .normal)
        } else {
            hiddenButtons(hidden: true)
            
            let alert = createResetAlert()
            
            present(alert, animated: true, completion: nil)
        }
    }
    
    func start() {
        storyIndex = 0
        
        currentStory = allStories.stories[storyIndex]
        updateUI()
    }
    
    func nextStory() {
        currentStory = answerSelected!.storyRelated
    }
    
    func createResetAlert() -> UIAlertController {
        let alert = UIAlertController(title: "End", message: "Do you start over?", preferredStyle: .actionSheet)
        
        let startOver = UIAlertAction(title: "Start Over", style: .default, handler: { (UIAlertAction) in
            self.start()
        })
        
        alert.addAction(startOver)
        
        return alert
    }
    
    func hiddenButtons(hidden: Bool) {
        topButton.isHidden = hidden
        bottomButton.isHidden = hidden
    }

}

