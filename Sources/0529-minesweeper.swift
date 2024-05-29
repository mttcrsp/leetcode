import Collections

/// https://leetcode.com/problems/minesweeper/
struct Minesweeper {
  func updateBoard(_ board: [[Character]], _ click: [Int]) -> [[Character]] {
    let directions = [[1, 0], [0, 1], [-1, 0], [0, -1], [1, -1], [-1, 1], [-1, -1], [1, 1]]
    let rows = board.count
    let cols = board[0].count

    var board = board
    switch board[click[0]][click[1]] {
    case "M":
      board[click[0]][click[1]] = "X"
    case "E":
      var visited: Set<[Int]> = [click]
      var queue: Deque<[Int]> = [click]
      while let current = queue.popFirst() {
        var neighbors: [[Int]] = []
        for direction in directions {
          var neighbor = current
          neighbor[0] += direction[0]
          neighbor[1] += direction[1]
          guard
            neighbor[0] >= 0, neighbor[0] < rows,
            neighbor[1] >= 0, neighbor[1] < cols
          else { continue }
          neighbors.append(neighbor)
        }

        var touchedBombsCount = 0
        for neighbor in neighbors {
          if board[neighbor[0]][neighbor[1]] == "M" {
            touchedBombsCount += 1
          }
        }

        if touchedBombsCount == 0 {
          board[current[0]][current[1]] = "B"
          for neighbor in neighbors {
            if !visited.contains(neighbor) {
              visited.insert(neighbor)
              queue.append(neighbor)
            }
          }
        } else {
          board[current[0]][current[1]] = "\(touchedBombsCount)".first!
        }
      }
    default:
      break
    }

    return board
  }
}
