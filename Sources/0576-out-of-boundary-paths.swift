/// https://leetcode.com/problems/out-of-boundary-paths/
struct OutOfBoundaryPaths {
  func findPaths(_ m: Int, _ n: Int, _ maxMove: Int, _ startRow: Int, _ startColumn: Int) -> Int {
    guard maxMove > 0 else { return 0 }

    let directions = [[-1, 0], [1, 0], [0, -1], [0, 1]]
    var counts = [[Int]](repeating: [Int](repeating: 0, count: n), count: m)
    counts[startRow][startColumn] = 1

    let modulo = 1_000_000_007
    var result = 0
    for _ in 0 ..< maxMove {
      var newCounts = [[Int]](repeating: [Int](repeating: 0, count: n), count: m)
      for row in 0 ..< m {
        for col in 0 ..< n {
          for direction in directions {
            let newRow = row+direction[0]
            let newCol = col+direction[1]
            if newRow < 0 || newRow >= m || newCol < 0 || newCol >= n {
              result += counts[row][col]
              result = result%modulo
            } else {
              newCounts[newRow][newCol] += counts[row][col]
              newCounts[newRow][newCol] = newCounts[newRow][newCol]%modulo
            }
          }
        }
      }

      counts = newCounts
    }

    return result
  }
}
