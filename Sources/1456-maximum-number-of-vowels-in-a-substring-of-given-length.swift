/// https://leetcode.com/problems/maximum-number-of-vowels-in-a-substring-of-given-length/
struct MaximumNumberOfVowelsInASubstringOfGivenLength {
  func maxVowels(_ s: String, _ k: Int) -> Int {
    let s = Array(s)
    let vowelsSet: Set<Character> = ["a", "e", "i", "o", "u"]
    var vowels = 0
    var maxVowels = 0
    for index in s.indices {
      let newCharacter = s[index]
      let oldCharacter = index >= k ? s[index-k] : "z"
      vowels -= vowelsSet.contains(oldCharacter) ? 1 : 0
      vowels += vowelsSet.contains(newCharacter) ? 1 : 0
      maxVowels = max(maxVowels, vowels)
    }
    return maxVowels
  }
}
