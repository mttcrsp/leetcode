/// https://leetcode.com/problems/count-and-say/
struct CountAndSay {
  func countAndSay(_ n: Int) -> String {
    func runLengthEncoding(_ number: String) -> String {
      var counts: [(character: Character, count: Int)] = []
      for character in number {
        if counts.last?.character == character {
          counts[counts.count-1].count += 1
        } else {
          counts.append((character, 1))
        }
      }

      var encoding = ""
      for (character, count) in counts {
        encoding += "\(count)\(character)"
      }

      return encoding
    }

    var result = "1"
    for _ in 1 ..< n {
      result = runLengthEncoding(result)
    }

    return result
  }
}
