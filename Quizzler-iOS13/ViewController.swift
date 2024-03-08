//
//  ViewController.swift
//  Quizzler-iOS13
//
//  Created by Angela Yu on 12/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var progressBar: UIProgressView!
    @IBOutlet weak var trueButton: UIButton!
    @IBOutlet weak var falseButton: UIButton!
    
    let quiz : [String] = [
    "Four + Two is equal to Six",
    "One + Three is equal to Four",
    "Seven + Eight is equal to Ten"
    ]
    
    var questionNumber = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        updateUI()
    }

    @IBAction func answerButton(_ sender: UIButton) {
        questionNumber += 1
        updateUI()
        
    }
    
    func updateUI() {
        questionLabel.text = quiz[questionNumber]
    }
    
}

