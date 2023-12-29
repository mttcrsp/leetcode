/// https://leetcode.com/problems/longest-repeating-character-replacement/
struct LongestRepeatingCharacterReplacement {
  func characterReplacement(_ s: String, _ k: Int) -> Int {
    let characters = Array(s)
    var count = [Int](repeating: 0, count: 26)
    var lhs = 0, maxCount = 0, maxLength = 0
    for rhs in characters.indices {
      let lhsValue = characters[rhs].alphabeticalValue
      count[lhsValue] += 1

      maxCount = max(maxCount, count[lhsValue])
      while rhs-lhs+1-maxCount > k {
        let rhsValue = characters[lhs].alphabeticalValue
        count[rhsValue] -= 1
        lhs += 1
      }

      maxLength = max(maxLength, rhs-lhs+1)
    }
    return maxLength
  }
}

private extension Character {
  var alphabeticalValue: Int {
    Int(asciiValue!-Character("A").asciiValue!)
  }
}
