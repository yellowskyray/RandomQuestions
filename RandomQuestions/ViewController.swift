//
//  ViewController.swift
//  RandomQuestions
//
//  Created by Brian Tan on 22/08/2019.
//  Copyright © 2019 Brian Tan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var question: UILabel!
    var selectedMood: String?
    
    let joyQuestions = ["What brings you the most joy?", "What has been the most joyous time of your life to date?", "Who brings you the most joy?", "How can you make your life more joyous?", "How often are you joyous during the week?"]
    lazy var randomJoyQuestions = joyQuestions.randomElement()
    
    let composedQuestions = ["How do you compose yourself under pressure?", "How composed are your feelings?", "How composed are your thoughts when you are negotiating?", "Are you a composed person?", "What is the secret of being composed?"]
    lazy var randomComposedQuestions = composedQuestions.randomElement()
    
    let anxiousQuestions = ["When is the last time you felt the most anxious?", "What makes you anxious?", "How do you feel when you are anxious?", "What do you do to focus when you feel anxious?", "How do you calm yourself when you feel anxious?"]
    lazy var randomAnxiousQuestions = anxiousQuestions.randomElement()
    
    let melancholyQuestions = ["When do you feel the most melancholy during the week?", "What makes you melancholy?", "How do you overcome a melancholy feeling?", "Do you think diet and lifestyle promote being melancholy?"]
    lazy var randomMelancholyQuestions = melancholyQuestions.randomElement()


    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        label.text = "How are you feeling?"
        
    }
    @IBAction func joyWasTapped(_ sender: Any) {
        selectedMood = randomJoyQuestions
        self.performSegue(withIdentifier: "moodQuestion", sender: nil)
    }
    
    
    @IBAction func composedWasTapped(_ sender: Any) {
        selectedMood = randomComposedQuestions
        self.performSegue(withIdentifier: "moodQuestion", sender: nil)
    }
    
    
    @IBAction func anxiousWasTapped(_ sender: Any) {
        selectedMood = randomAnxiousQuestions
        self.performSegue(withIdentifier: "moodQuestion", sender: nil)
    }
    
    
    @IBAction func melancholyWasTapped(_ sender: Any) {
        selectedMood = randomMelancholyQuestions
        self.performSegue(withIdentifier: "moodQuestion", sender: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.destination is MoodQuestionViewController {
            let vc = segue.destination as? MoodQuestionViewController
            vc?.question = "\(selectedMood ?? "No Question")"
        }
    }
    
}
