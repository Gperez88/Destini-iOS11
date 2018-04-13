//
//  StoryBank.swift
//  Destini
//
//  Created by Gabriel Perez on 4/13/18.
//  Copyright © 2018 London App Brewery. All rights reserved.
//

import Foundation

class StoryBank {
    var stories = [Story]()
    
    init() {
        // Stories
        let story1 = Story(text: "Your car has blown a tire on a winding road in the middle of nowhere with no cell phone reception. You decide to hitchhike. A rusty pickup truck rumbles to a stop next to you. A man with a wide brimmed hat with soulless eyes opens the passenger door for you and asks: \"Need a ride, boy?\".")
        let story2 = Story(text: "He nods slowly, unphased by the question.")
        let story3 = Story(text: "As you begin to drive, the stranger starts talking about his relationship with his mother. He gets angrier and angrier by the minute. He asks you to open the glovebox. Inside you find a bloody knife, two severed fingers, and a cassette tape of Elton John. He reaches for the glove box.")
        let story4 = Story(text: "What? Such a cop out! Did you know traffic accidents are the second leading cause of accidental death for most adult age groups?")
        let story5 = Story(text: "As you smash through the guardrail and careen towards the jagged rocks below you reflect on the dubious wisdom of stabbing someone while they are driving a car you are in.")
        let story6 = Story(text: "You bond with the murderer while crooning verses of \"Can you feel the love tonight\". He drops you off at the next town. Before you go he asks you if you know any good places to dump bodies. You reply: \"Try the pier.\"")
        
        // Answers
        let answer1a = Answer(text: "I\'ll hop in. Thanks for the help!")
        let answer2a = Answer(text: "At least he\'s honest. I\'ll climb in.")
        let answer1b = Answer(text: "Better ask him if he\'s a murderer first.")
        let answer2b = Answer(text: "Wait, I know how to change a tire.")
        let answer3a = Answer(text: "I love Elton John! Hand him the cassette tape.")
        let answer3b = Answer(text: "It\'s him or me! You take the knife and stab him.")
        
        // set answers to stories
        story1.answers = [answer1a, answer1b]
        story2.answers = [answer2a, answer2b]
        story3.answers = [answer3a, answer3b]
        
        // set story related to answers
        answer1a.storyRelated = story3
        answer1b.storyRelated = story2
        answer2a.storyRelated = story3
        answer2b.storyRelated = story4
        answer3a.storyRelated = story6
        answer3b.storyRelated = story5
        
        // load stories
        stories.append(story1)
        stories.append(story2)
        stories.append(story3)
        stories.append(story4)
        stories.append(story5)
        stories.append(story6)
        
    }
}
