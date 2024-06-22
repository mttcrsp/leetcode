/// https://leetcode.com/problems/battleships-in-a-board/
struct BattleshipsInABoard {
  func countBattleships(_ board: [[Character]]) -> Int {
    var result = 0
    for row in board.indices {
      for col in board[row].indices {
        if board[row][col] == "." { continue }
        if row > 0, board[row-1][col] == "X" { continue }
        if col > 0, board[row][col-1] == "X" { continue }
        result += 1
      }
    }

    return result
  }
}
