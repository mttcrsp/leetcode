extension Solution {
  func balancedStringSplit(_ s: String) -> Int {
    var lCount = 0, rCount = 0, count = 0

    for character in s {
      switch character {
      case "L": lCount += 1
      case "R": rCount += 1
      case _: assertionFailure("Unexpected character '\(character)' found")
      }

      if lCount == rCount {
        lCount = 0
        rCount = 0
        count += 1
      }
    }

    return count
  }
}
