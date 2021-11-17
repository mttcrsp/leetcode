struct NumberOfStringsThatAppearAsSubstringsInWord {
  func numOfStrings(_ patterns: [String], _ word: String) -> Int {
    var count = 0
    for pattern in patterns {
      if let _ = word.range(of: pattern) {
        count += 1
      }
    }
    return count
  }
}
