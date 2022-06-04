/// https://leetcode.com/problems/valid-sudoku/
struct ValidSudoku {
  func isValidSudoku(_ board: [[Character]]) -> Bool {
    var rows = [UInt16](repeating: 0, count: 9)
    var cols = [UInt16](repeating: 0, count: 9)
    var squs = [UInt16](repeating: 0, count: 9)

    for row in 0 ..< 9 {
      for col in 0 ..< 9 {
        guard let i = board[row][col].wholeNumberValue else {
          continue
        }

        let squ = ((row / 3) * 3) + (col / 3)
        if rows[row].isBitSet(at: i) ||
          cols[col].isBitSet(at: i) ||
          squs[squ].isBitSet(at: i)
        {
          return false
        }

        rows[row].setBit(at: i)
        cols[col].setBit(at: i)
        squs[squ].setBit(at: i)
      }
    }
    return true
  }
}

private extension FixedWidthInteger {
  mutating func setBit(at index: Int) {
    self |= (1 << index)
  }

  func isBitSet(at index: Int) -> Bool {
    ((self & (1 << index)) >> index) == 1
  }
}
