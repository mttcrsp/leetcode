struct LuckyNumbersInAMatrix {
  func luckyNumbers(_ matrix: [[Int]]) -> [Int] {
    // empty matrix
    guard let firstRow = matrix.first else {
      return []
    }

    // empty rows
    let columnsCount = firstRow.count
    guard columnsCount >= 1 else {
      return []
    }

    var mins: Set<Int> = []
    for row in matrix {
      if let min = row.min() {
        mins.insert(min)
      }
    }

    for columnIndex in 0 ..< columnsCount {
      var max: Int?
      for row in matrix {
        if max != nil {
          max = Swift.max(max!, row[columnIndex])
        } else {
          max = row[columnIndex]
        }
      }
      if let max = max, mins.contains(max) {
        return [max]
      }
    }

    return []
  }
}
