/// https://leetcode.com/problems/palindrome-permutation/
class PalindromePermutation {
  func canPermutePalindrome(_ s: String) -> Bool {
    var occurrences: [Character: Int] = [:]
    for character in s {
      occurrences[character, default: 0] += 1
    }

    var foundOdd = false
    for (_, count) in occurrences where count%2 == 1 {
      if foundOdd {
        return false
      } else {
        foundOdd = true
      }
    }

    return true
  }
}
