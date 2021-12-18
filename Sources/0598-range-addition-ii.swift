struct RangeAdditionIi {
  func maxCount(_ m: Int, _ n: Int, _ ops: [[Int]]) -> Int {
    if ops.isEmpty {
      return m * n
    }

    var row = Int.max
    var col = Int.max
    for op in ops {
      row = min(row, op[0])
      col = min(col, op[1])
    }
    return row * col
  }
}
