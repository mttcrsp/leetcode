/// https://leetcode.com/problems/ransom-note/
struct RansomNote {
  func canConstruct(_ ransomNote: String, _ magazine: String) -> Bool {
    var occurrences: [Character: Int] = [:]
    for character in magazine {
      occurrences[character, default: 0] += 1
    }

    for character in ransomNote {
      if occurrences[character, default: 0] > 0 {
        occurrences[character, default: 0] -= 1
      } else {
        return false
      }
    }

    return true
  }
  }
