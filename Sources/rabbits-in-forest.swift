extension Solution {
  func numRabbits(_ answers: [Int]) -> Int {
    var matchedAnswers: [Int: Int] = [:]
    var count = 0

    for answer in answers {
      switch (answer, matchedAnswers[answer]) {
      case (0, _):
        count += 1
      case (_, .none):
        matchedAnswers[answer] = answer; count += answer + 1
      case (_, .some(1)):
        matchedAnswers[answer] = nil
      case let (_, .some(count)):
        matchedAnswers[answer] = count - 1
      }
    }

    return count
  }
}
