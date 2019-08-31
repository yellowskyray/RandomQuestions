//
//  MoodQuestionViewController.swift
//  RandomQuestions
//
//  Created by Brian Tan on 31/08/2019.
//  Copyright © 2019 Brian Tan. All rights reserved.
//

import UIKit

class MoodQuestionViewController: UIViewController {
    @IBOutlet weak var questionLabel: UILabel!
    var question:String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        questionLabel.text = question
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
