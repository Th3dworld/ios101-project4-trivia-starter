//
//  TriviaQuestionService.swift
//  Trivia
//
//  Created by Matanda  Phiri  on 6/28/25.
//

import Foundation

class TriviaQuestionService {
    static func fetchQuestions(amount: Int, completion:(([TriviaQuestion]) -> Void)? = nil){
        let url = URL(string: "https://opentdb.com/api.php?amount=\(amount)")!
        // create a data task and pass in the URL
        let task = URLSession.shared.dataTask(with: url) { data, response, error in
            // this closure is fired when the response is received
            guard error == nil else {
                assertionFailure("Error: not here")
                return
            }
            guard let httpResponse = response as? HTTPURLResponse else {
                assertionFailure("Invalid response")
                return
            }
            guard let data = data, httpResponse.statusCode == 200 else {
                assertionFailure("Invalid response status code: \(httpResponse.statusCode)")
                return
            }
            let questionBank = parse(data: data)
            DispatchQueue.main.async {
                completion?(questionBank)
            }
            // at this point, `data` contains the data received from the response
        }
        task.resume() // resume the task and fire the request
    }
    
    private static func parse(data: Data) -> [TriviaQuestion] {
        // transform the data we received into a dictionary [String: Any]
        let jsonDictionary = try! JSONSerialization.jsonObject(with: data, options: []) as! [String: Any]
        let result =  jsonDictionary["results"] as! [[String: Any]]
        var questions = [TriviaQuestion]()
        for item in result {
            var question = TriviaQuestion(category: item["category"] as! String, question: item["question"] as! String, correctAnswer: item["correct_answer"]  as! String, incorrectAnswers: item["incorrect_answers"] as! [String])
            questions.append(question)
        }
        return questions
    }
}

