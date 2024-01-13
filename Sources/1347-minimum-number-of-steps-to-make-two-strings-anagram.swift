/// https://leetcode.com/problems/minimum-number-of-steps-to-make-two-strings-anagram/
struct MinimumNumberOfStepsToMakeTwoStringsAnagram {
  func minSteps(_ s: String, _ t: String) -> Int {
    var occurrences: [Character: Int] = [:]
    for character in s {
      occurrences[character, default: 0] += 1
    }

    var steps = 0
    for character in t {
      if occurrences[character, default: 0] > 0 {
        occurrences[character, default: 0] -= 1
      } else {
        steps += 1
      }
    }

    return steps
  }
}
