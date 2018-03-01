//
//  ViewController.swift
//  Quiz
//
//  Created by Jason Ellerbeck on 1/10/18.
//  High Point University
//  Copyright © 2018 Jason Ellerbeck. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var answerLabel: UILabel!
    @IBOutlet var currentQuestionLabel: UILabel!
    @IBOutlet var nextQuestionLabel: UILabel!
    
    func animateLabelTransitions() {
        
        //Animte the alpha
        UIView.animate(withDuration: 0.5, animations: {
            self.currentQuestionLabel.alpha = 0
            self.nextQuestionLabel.alpha = 1
        })
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        // Set the label's initial alpha
      nextQuestionLabel.alpha = 0
    }
    
    let questions: [String] = [
        "What is 7+7?",
        "What is the capital of Vermont?",
        "What is cognac made from?",
        "What is the capital of England",
        "How old is Betty White?",
        "Where is Wakanda?",
        "What is the radius of the sun?",
        "Lead actor of Iron Man series?",
        "How many minutes is in a year?",
        "Who is Peter Parker?"
    ]
    let answers: [String] = [
        "14",
        "Montpelier",
        "Grapes",
        "London",
        "96",
        "Africa",
        "432,288 miles",
        "Robert Downey Jr.",
        "525,600 minutes",
        "Spider-man"
        
        
    ]
    var currentQuestionIndex: Int = 0
    
    @IBAction func showNextQuestion(_ sender: UIButton){
        currentQuestionIndex += 1
        if currentQuestionIndex == questions.count {
            currentQuestionIndex = 0
        }
    
        let question: String = questions[currentQuestionIndex]
        nextQuestionLabel.text = question
        answerLabel.text = "???"
        
        animateLabelTransitions()
    }
    
    @IBAction func showAnswer(_ sender: UIButton){
        let answer: String = answers[currentQuestionIndex]
        answerLabel.text = answer
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        currentQuestionLabel.text = questions[currentQuestionIndex]
    }
    
    
   
    }






