/// https://leetcode.com/problems/diagonal-traverse/
struct DiagonalTraverse {
  func findDiagonalOrder(_ mat: [[Int]]) -> [Int] {
    typealias Coordinate = (row: Int, col: Int)

    let rows = mat.count
    let cols = mat[0].count
    let start: Coordinate = (0, 0)
    let end: Coordinate = (rows-1, cols-1)

    var result: [Int] = []
    var direction = Direction.topRight
    var coordinate = start
    while coordinate != end {
      let (row, col) = coordinate
      if row >= 0, row < rows, col >= 0, col < cols {
        result.append(mat[row][col])
        switch direction {
        case .topRight:
          coordinate = (row-1, col+1)
        case .bottomLeft:
          coordinate = (row+1, col-1)
        }
      } else {
        switch direction {
        case .topRight:
          coordinate = col < cols ? (row+1, col) : (row+2, col-1)
        case .bottomLeft:
          coordinate = row < rows ? (row, col+1) : (row-1, col+2)
        }
        direction = direction.opposite
      }
    }

    result.append(mat[coordinate.row][coordinate.col])
    return result
  }

  enum Direction {
    case topRight, bottomLeft
    var opposite: Direction {
      switch self {
      case .topRight: .bottomLeft
      case .bottomLeft: .topRight
      }
    }
  }
}
