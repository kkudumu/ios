//
//  ViewController.swift
//  iOSQuiz
//
//  Created by Kioja Kudumu on 10/31/17.
//  Copyright © 2017 Kioja Kudumu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var answerLabel: UILabel!
    
    @IBAction func answerButtonPressed(_ sender: UIButton) {
        print("Answer button pressed")
    }
    
    @IBAction func nextButtonPressed(_ sender: UIButton) {
        print("Next button pressed")
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        questionLabel.text = "Outlets are cool?"
        answerLabel.text = "You betcha"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

