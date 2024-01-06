/// https://leetcode.com/problems/unique-paths/
struct UniquePaths {
  func uniquePaths(_ m: Int, _ n: Int) -> Int {
    var answers = [Int](repeating: 1, count: m+1)
    for _ in 1 ..< n {
      var newAnswers = answers
      for i in newAnswers.indices.dropFirst() {
        newAnswers[i] = newAnswers[i-1]+answers[i]
      }

      answers = newAnswers
    }

    return answers[m-1]
  }
}
