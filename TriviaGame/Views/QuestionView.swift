//
//  QuestionView.swift
//  TriviaGame
//
//  Created by Alireza Shakeri on 27/12/2021.
//

import SwiftUI

struct QuestionView: View {
    var body: some View {
        VStack(spacing: 40) {
            HStack {
                Text("Trivia Game")
                    .lilacTitle()
                Spacer()
                Text("1 out of 10")
                    .foregroundColor(Color("AccentColor"))
                    .fontWeight(.heavy)
            }
            
            ProgressBar(progress: 10)
            
            VStack(alignment: .leading, spacing: 20) {
                Text("What does a funambulist walk on?")
                            .font(.system(size: 20))
                            .bold()
                            .foregroundColor(.gray)
                
                AnswerRow(answer: Answer(text: "The Moon", isCorrect: false))
                AnswerRow(answer: Answer(text: "A Tight Rope", isCorrect: true))
                AnswerRow(answer: Answer(text: "Balls", isCorrect: false))
                AnswerRow(answer: Answer(text: "Broken Glass", isCorrect: false))
            }
            
            PrimaryButton(text: "Next")

            Spacer()
        }
        .padding()
        .frame(width: .infinity, height: .infinity, alignment: .topLeading)
        .background(Color(red: 0.984313725490196, green: 0.9294117647058824, blue: 0.8470588235294118))
        .navigationBarHidden(true)
    }
}

struct QuestionView_Previews: PreviewProvider {
    static var previews: some View {
        QuestionView()
    }
}
