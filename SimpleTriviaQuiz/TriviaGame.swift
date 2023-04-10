import SwiftUI

struct TriviaGame: View {
    @State var trivias: [Trivia] = SampleTrivias // Stores all the trivia data
    @State var isComplete: Bool = false // Indicates whether a question has already been answered
    @State var current: Int = 0 // Current question we are answering
    @State var answers: [String] = [] // Stores the possible answers
    @State var score: Int = 0 // Number of user's correct answers
    @Environment(\.dismiss) var dismiss // Function that returns to the home screen
    
    var body: some View {
        Text("Hello, world!")
    } // body
    
    // MARK: -- UI Components
    
    // MARK: ScoreScreen
    @ViewBuilder
    func ScoreView() -> some View {
        
    }
    
    // MARK: Trivia Screen
    @ViewBuilder
    func TriviaView() -> some View {
        
    }
    
    
    // MARK: -- Game Logic
    func checkAnswer(selected: String) {
        if isComplete { return } // Do not allow re-answering
        isComplete = true
        if selected == trivias[current].correct_answer {
            score += 1
        }
    }
    
    func reset() {
        isComplete = false
        current = 0
        score = 0
    }
    
    func next() {
        current += 1
        if current >= trivias.count { return }
        answers = trivias[current].getAnswers()
        isComplete = false
    }
}

struct TriviaGame_Previews: PreviewProvider {
    static var previews: some View {
        TriviaGame()
    }
}
