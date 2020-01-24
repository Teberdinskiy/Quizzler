//
//  ViewController.swift
//  Quizzler
//
//  Created by 🧔🏻Alikhan Batchaev on 24.01.2020.
//  Copyright © 2020 Alikhan Batchaev. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var progressBar: UIProgressView!
    @IBOutlet weak var trueButton: UIButton!
    @IBOutlet weak var falseButton: UIButton!
    
    let quiz = [
        Question(q: "Четыре + Два равно шесть", a: "Правда"),
        Question(q: "Пять - три больше чем один", a: "Правда"),
        Question(q: "Три + девять меньше десяти", a: "Ложь")
    ]
    
    var questionNumber = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        updateUI()
    }
    
    @IBAction func answerButtonPressed(_ sender: UIButton) {
        
        let userAnswer = sender.currentTitle
        let actualAnswer = quiz[questionNumber].answer
        
        if userAnswer == actualAnswer {
            print("Правильно!")
        } else {
            print("Неправильно!")
        }
        
        if questionNumber + 1 < quiz.count {
            questionNumber += 1
        } else {
            questionNumber = 0
        }
        updateUI()
    }
    
    func updateUI() {
        questionLabel.text = quiz[questionNumber].text
    }
}

