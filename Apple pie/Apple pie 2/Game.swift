import Foundation

struct Game {
    var word: String
    var incorrectMovesRemaining: Int
    var guessedLetters: [Character]
    
    var formattedWord: String {
        var guessedWord = ""
        
        for letter in word {
            if guessedLetters.contains(letter) {
                guessedWord += "\(letter)"
                
            } else {
                guessedWord += "_"
            }
        }
        
        return guessedWord
        
    }
    
    mutating func playerGuessed(Letter: Character) {
        guessedLetters.append(Letter)
        
        if !word.contains(Letter) {
            incorrectMovesRemaining -= 1
        }
    }
}
