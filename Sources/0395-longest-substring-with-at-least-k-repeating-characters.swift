/// https://leetcode.com/problems/longest-substring-with-at-least-k-repeating-characters/
struct LongestSubstringWithAtLeastKRepeatingCharacters {
  func longestSubstring(_ s: String, _ k: Int) -> Int {
    var frequencies: [Character: Int] = [:]
    for character in s {
      frequencies[character, default: 0] += 1
    }

    var invalidCharacters: Set<Character> = []
    for (character, count) in frequencies {
      if count < k {
        invalidCharacters.insert(character)
      }
    }

    guard !invalidCharacters.isEmpty
    else { return s.count }

    var substring = ""
    var substrings: Set<String> = []
    for character in s {
      if !invalidCharacters.contains(character) {
        substring.append(character)
      } else if substring != "" {
        substrings.insert(substring)
        substring = ""
      }
    }

    if !substring.isEmpty {
      substrings.insert(substring)
    }

    var longest = 0
    for substring in substrings {
      longest = max(longest, longestSubstring(substring, k))
    }
    return longest
  }
}
