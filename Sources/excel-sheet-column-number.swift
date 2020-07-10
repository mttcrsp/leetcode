import Foundation

extension Solution {
    func titleToNumber(_ s: String) -> Int {
        var number = 0
        for (i, character) in s.reversed().enumerated() {
            let base = Double(26), exponent = Double(i)
            let value = character.alphabeticalValue
            number += value * Int(pow(base, exponent))
        }
        return number
    }
}

private extension Character {
    var alphabeticalValue: Int {
        if let current = asciiValue, let reference = Character("A").asciiValue {
            return Int(current - reference + 1)
        } else {
            assertionFailure()
            return 0
        }
    }
}
