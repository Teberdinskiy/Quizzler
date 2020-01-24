//
//  QuizBrain.swift
//  Quizzler
//
//  Created by 🧔🏻Alikhan Batchaev on 24.01.2020.
//  Copyright © 2020 Alikhan Batchaev. All rights reserved.
//

import Foundation

struct QuizBrain {
    let quiz = [
        Question(q: "Электрон больше, чем атом", a: "Ложь"),
        Question(q: "Килиманджаро - самая высокая гора в мире", a: "Ложь"),
        Question(q: "Глаз страуса больше, чем его мозг", a: "Правда"),
        Question(q: "Летучие мыши слепы", a: "Ложь"),
        Question(q: "Порт-Луи - столица Маврикия", a: "Правда"),
        Question(q: "У белого медведя черная кожа", a: "Правда"),
        Question(q: "Берлинская стена была построена в 70-х", a: "Ложь"),
        Question(q: "Единорог - национальный символ Шотландии", a: "Правда"),
        Question(q: "Швейцарский флаг - единственный квадратный в мире", a: "Ложь"),
        Question(q: "Столица Турции - Стамбул", a: "Ложь")
    ]
    
    var questionNumber = 0
    
    func checkAnswer(_ userAnswer: String) -> Bool {
        if userAnswer == quiz[questionNumber].answer {
            return true
        } else {
            return false
        }
    }
    
    func getQuestionText() -> String {
        return quiz[questionNumber].text
    }
    
    func getProgress() -> Float {
        let progress = Float(questionNumber) / Float(quiz.count)
        return progress
    }
    
    mutating func nextQuestion() {
        if questionNumber + 1 < quiz.count {
            questionNumber += 1
        } else {
            questionNumber = 0
        }
    }
}
