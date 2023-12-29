/// https://leetcode.com/problems/word-search-ii/
struct WordSearchIi {
  func findWords(_ board: [[Character]], _ words: [String]) -> [String] {
    class Node {
      var isWord: Bool
      var children: [Character: Node]
      init(isWord: Bool = false, children: [Character: Node] = [:]) {
        self.isWord = isWord
        self.children = children
      }
    }

    struct Cell: Hashable {
      let row, col: Int
    }

    let rows = board.count
    let cols = board[0].count
    let root = Node()
    for word in words {
      var current = root
      for character in word {
        let node = current.children[character, default: Node()]
        current.children[character] = node
        current = node
      }
      current.isWord = true
    }

    var result: [String] = []
    var visited: Set<Cell> = []
    func visit(row: Int, col: Int, word: String = "", node: Node = root) {
      guard (0 ..< rows) ~= row, (0 ..< cols) ~= col else {
        return
      }

      let cell = Cell(row: row, col: col)
      guard !visited.contains(cell) else {
        return
      }

      let character = board[row][col]
      guard let child = node.children[character] else {
        return
      }

      visited.insert(cell)
      defer { visited.remove(cell) }

      var newWord = word
      newWord.append(character)

      if child.isWord {
        child.isWord = false
        result.append(newWord)
      }

      visit(row: row-1, col: col, word: newWord, node: child)
      visit(row: row+1, col: col, word: newWord, node: child)
      visit(row: row, col: col-1, word: newWord, node: child)
      visit(row: row, col: col+1, word: newWord, node: child)
    }

    for row in 0 ..< rows {
      for col in 0 ..< cols {
        visit(row: row, col: col)
      }
    }
    return result
  }
}
