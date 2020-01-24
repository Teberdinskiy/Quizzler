//
//  Question.swift
//  Quizzler
//
//  Created by 🧔🏻Alikhan Batchaev on 24.01.2020.
//  Copyright © 2020 Alikhan Batchaev. All rights reserved.
//

import Foundation

struct Question {
    let text: String
    let answer: String
    
    init(q: String, a: String) {
        text = q
        answer = a
    }
}
