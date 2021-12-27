//
//  Answer.swift
//  TriviaGame
//
//  Created by Alireza Shakeri on 27/12/2021.
//

import Foundation


struct Answer: Identifiable {
    var id = UUID()
    var text: AttributedString
    var isCorrect: Bool
}
