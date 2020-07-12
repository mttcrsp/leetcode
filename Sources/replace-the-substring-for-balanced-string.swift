extension Solution {
    func balancedString(_ s: String) -> Int {
        let characters: [Character] = ["Q", "W", "E", "R"]

        var occurrences: [Character: Int] = [:]
        for character in s {
            occurrences[character, default: 0] += 1
        }

        let expectedOccurrences = s.count / 4
        for character in characters {
            let characterOccurrences = occurrences[character, default: 0]
            let hasTooManyOccurrences = characterOccurrences > expectedOccurrences
            if hasTooManyOccurrences {
                occurrences[character] = characterOccurrences - expectedOccurrences
            } else {
                occurrences[character] = nil
            }
        }

        if occurrences.isEmpty {
            return 0
        }

        let string = Array(s)

        var min = Int.max
        var lowerbound = 0

        for upperbound in string.indices {
            let upperboundCharacter = string[upperbound]
            if let count = occurrences[upperboundCharacter] {
                occurrences[upperboundCharacter] = count - 1
            }

            while occurrences.values.allSatisfy({ $0 <= 0 }) {
                min = Swift.min(min, upperbound - lowerbound + 1)

                let lowerboundCharacter = string[lowerbound]
                if let count = occurrences[lowerboundCharacter] {
                    occurrences[lowerboundCharacter] = count + 1
                }

                lowerbound += 1
            }
        }

        return min
    }
}
