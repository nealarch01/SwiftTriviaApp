import SwiftUI

struct Trivia: Decodable {
    var category: String
    var type: String
    var difficulty: String
    var question: String
    var correct_answer: String
    var incorrect_answers: [String]
    
    init() {
        category = "Geography"
        type = "multiple"
        difficulty = ""
        question = "What is the capital of California?"
        correct_answer = "Sacramento"
        incorrect_answers = ["San Diego", "Los Angeles", "Irvine"]
    }
    
    func getAnswers() -> [String] {
        if type == "boolean" { return ["True", "False"] }
        return (incorrect_answers + [correct_answer]).shuffled()
    }
}

struct TriviaGame: View {
    @State var trivias: [Trivia] = SampleTrivias // Stores all the trivia data
    @State var isComplete: Bool = false // Indicates whether a question has already been answered
    @State var current: Int = 0 // Current question we are answering
    @State var answers: [String] = [] // Stores the possible answers
    @State var score: Int = 0 // Number of user's correct answers
    @Environment(\.dismiss) var dismiss // Function that returns to the home screen
    
    var body: some View {
        VStack(spacing: 20) {
        }
    } // body
    
    // Score Screen
    @ViewBuilder
    func ScoreView() -> some View {}
    
    // Trivia Screen
    @ViewBuilder
    func TriviaView() -> some View {}
    
    func checkAnswer(selected: String) {}
    
    func reset() {}
    
    func next() {}
}

struct TriviaGame_Previews: PreviewProvider {
    static var previews: some View {
        TriviaGame()
    }
}
