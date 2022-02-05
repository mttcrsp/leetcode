struct FindGoodDaysToRobTheBank {
  func goodDaysToRobBank(_ security: [Int], _ time: Int) -> [Int] {
    if time == 0 {
      return Array(security.indices)
    }
    if time > security.count - time {
      return []
    }

    var lhs = [Int](repeating: 0, count: security.count)
    var rhs = [Int](repeating: 0, count: security.count)
    for i in security.indices.dropFirst() {
      if security[i] <= security[i - 1] {
        lhs[i] = 1 + lhs[i - 1]
      }
    }
    for i in security.indices.reversed().dropFirst() {
      if security[i] <= security[i + 1] {
        rhs[i] = 1 + rhs[i + 1]
      }
    }

    var days: [Int] = []
    for i in time ..< security.count - time {
      if lhs[i] >= time, rhs[i] >= time {
        days.append(i)
      }
    }
    return days
  }
}
