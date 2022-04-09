/// https://leetcode.com/problems/valid-sudoku/
struct ValidSudoku {
  func isValidSudoku(_ board: [[Character]]) -> Bool {
    let rows = board
    let columns = self.columns(in: board)
    let squares = self.squares(in: board)
    for sequence in rows + columns + squares where !isValidSequence(sequence) {
      return false
    }
    return true
  }

  private func columns(in board: [[Character]]) -> [[Character]] {
    let column = [Character](repeating: ".", count: 9)
    var columns = [[Character]](repeating: column, count: 9)
    for i in 0 ..< 9 {
      for j in 0 ..< 9 {
        columns[i][j] = board[j][i]
      }
    }
    return columns
  }

  private func squares(in board: [[Character]]) -> [[Character]] {
    var squares = [[Character]](repeating: [], count: 9)
    for i in 0 ..< 9 {
      for j in 0 ..< 9 {
        let k = ((j / 3) * 3) + (i / 3)
        squares[k].append(board[j][i])
      }
    }
    return squares
  }

  private func isValidSequence(_ sequence: [Character]) -> Bool {
    var encountered: Set<Character> = []
    for character in sequence where character != "." {
      guard !encountered.contains(character) else { return false }
      encountered.insert(character)
    }
    return true
  }
}
