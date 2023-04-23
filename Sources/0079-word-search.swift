/// https://leetcode.com/problems/word-search/
struct WordSearch {
  func exist(_ board: [[Character]], _ word: String) -> Bool {
    struct Cell: Hashable {
      let row, col: Int
    }
    
    let word = Array(word)
    let rows = board.count
    let cols = board[0].count
    
    var offset = 0
    var visited: Set<Cell> = []
    func visit(row: Int, col: Int) -> Bool {
      guard offset < word.count else {
        return true
      }
      
      let cell = Cell(row: row, col: col)
      if row < 0 || row >= rows ||
         col < 0 || col >= cols ||
         board[row][col] != word[offset] ||
         visited.contains(cell) {
        return false
      }
      
      offset += 1
      defer { offset -= 1 }
      
      visited.insert(cell)
      defer { visited.remove(cell) }
      
      return (
        visit(row: row - 1, col: col) ||
        visit(row: row + 1, col: col) ||
        visit(row: row, col: col - 1) ||
        visit(row: row, col: col + 1)
      )
    }
    
    for row in 0 ..< rows {
      for col in 0 ..< cols {
        if visit(row: row, col: col) {
          return true
        }
      }
    }
    return false
  }
}
