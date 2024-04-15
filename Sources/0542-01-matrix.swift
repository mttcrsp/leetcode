/// https://leetcode.com/problems/01-matrix/
struct Matrix01 {
  func updateMatrix(_ mat: [[Int]]) -> [[Int]] {
    var frontier: Set<Coordinate> = []
    for y in mat.indices {
      for x in mat[y].indices {
        if mat[y][x] == 0 {
          frontier.insert(.init(x: x, y: y))
        }
      }
    }

    let row = [Int](repeating: -1, count: mat[0].count)
    var result = [[Int]](repeating: row, count: mat.count)
    for coordinate in frontier {
      result[coordinate.y][coordinate.x] = 0
    }

    var distance = 1
    while !frontier.isEmpty {
      defer { distance += 1 }

      var nextFrontier: Set<Coordinate> = []
      defer { frontier = nextFrontier }

      for coordinate in frontier {
        for neighbour in coordinate.neighbours {
          guard
            result.indices ~= neighbour.y,
            result[0].indices ~= neighbour.x,
            result[neighbour.y][neighbour.x] == -1
          else { continue }
          result[neighbour.y][neighbour.x] = distance
          nextFrontier.insert(neighbour)
        }
      }
    }

    return result
  }

  struct Coordinate: Hashable {
    let x, y: Int
    var neighbours: [Coordinate] {
      [
        .init(x: x-1, y: y),
        .init(x: x+1, y: y),
        .init(x: x, y: y-1),
        .init(x: x, y: y+1),
      ]
    }
  }
}
