struct NextGreaterElementI {
  func nextGreaterElement(_ numbers1: [Int], _ numbers2: [Int]) -> [Int] {
    var pending: [Int] = []
    var answers: [Int: Int] = [:]
    for (lhs, rhs) in zip(numbers2, numbers2.dropFirst()) {
      pending.append(lhs)
      while let last = pending.last, rhs > last {
        pending.removeLast()
        answers[last] = rhs
      }
    }

    return numbers1.map { number in
      answers[number] ?? -1
    }
  }
}
