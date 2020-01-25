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
        Question(q: "Столица Турции", a: ["Стамбул", "Анкара", "Анталия"], correctAnswer: "Анкара"),
        Question(q: "Электрон больше, чем атом", a: ["Ложь", "Правда", "Наверно"], correctAnswer: "Ложь"),
        Question(q: "Самая высокая гора в мире", a: ["Килиманджаро", "Эльбрус", "Эверест"], correctAnswer: "Эверест"),
        Question(q: "Глаз страуса больше, чем его мозг", a: ["Ложь", "Правда", "Наверно"], correctAnswer: "Правда"),
        Question(q: "Летучие мыши слепы", a: ["Ложь", "Правда", "Наверно"], correctAnswer: "Ложь"),
        Question(q: "Порт-Луи - столица Маврикия", a: ["Ложь", "Правда", "Наверно"], correctAnswer: "Правда"),
        Question(q: "У белого медведя черная кожа", a: ["Ложь", "Правда", "Наверно"], correctAnswer: "Правда"),
        Question(q: "Берлинская стена была построена в 70-х", a: ["Ложь", "Правда", "Наверно"], correctAnswer: "Ложь"),
        Question(q: "Единорог - национальный символ Шотландии", a: ["Ложь", "Правда", "Наверно"], correctAnswer: "Правда"),
        Question(q: "Швейцарский флаг - единственный квадратный в мире", a: ["Ложь", "Правда", "Наверно"], correctAnswer: "Ложь")
    ]
    
    var questionNumber = 0
    var score = 0
    
    mutating func checkAnswer(_ userAnswer: String) -> Bool {
        if userAnswer == quiz[questionNumber].rightAnswer {
            score += 1
            return true
        } else {
            return false
        }
    }
    
    func getAnswers() -> [String] {
        return quiz[questionNumber].answers
    }
    
    func getScore() -> Int {
        return score
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
            score = 0
        }
    }
}
