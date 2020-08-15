extension Solution {
    func longestPalindrome(_ s: String) -> Int {
        var occurrences: [Character: Int] = [:]
        for character in s {
            occurrences[character, default: 0] += 1
        }

        var result = 0
        var containsOdd = false
        for (_, count) in occurrences {
            result += count / 2
            containsOdd = containsOdd || count & 1 == 1
        }

        return result * 2 + (containsOdd ? 1 : 0)
    }
}
