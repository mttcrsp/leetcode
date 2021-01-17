struct FindTheTownJudge {
  func findJudge(_ N: Int, _ trust: [[Int]]) -> Int {
    var reputation = [Int](repeating: 0, count: N + 1)

    for element in trust {
      let truster = element[0]
      let trusted = element[1]
      reputation[truster] -= 1
      reputation[trusted] += 1
    }

    for person in 1 ... N where reputation[person] == N - 1 {
      return person
    }
    return -1
  }
}
