extension Solution {
    func longestPalindrome(_ s: String) -> Int {
        var occurrencesCounts: [Character: Int] = [:]
        for character in s {
            occurrencesCounts[character, default: 0] += 1
        }

        var matchedOccurrences = 0
        var unmatchedOccurrences = 0
        for (_, occurrences) in occurrencesCounts {
            matchedOccurrences += occurrences / 2
            unmatchedOccurrences += occurrences % 2
        }

        let additionalCharacterConstant = unmatchedOccurrences == 0 ? 0 : 1
        return (matchedOccurrences * 2) + additionalCharacterConstant
    }
}
