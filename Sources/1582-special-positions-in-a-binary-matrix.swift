/// https://leetcode.com/problems/special-positions-in-a-binary-matrix/
struct SpecialPositionsInABinaryMatrix {
  func numSpecial(_ mat: [[Int]]) -> Int {
    var rowsSums: [Int: Int] = [:]
    var colsSums: [Int: Int] = [:]
    for y in mat.indices {
      for x in mat[y].indices {
        rowsSums[y, default: 0] += mat[y][x]
        colsSums[x, default: 0] += mat[y][x]
      }
    }

    var specialNumbers = 0
    for y in mat.indices {
      for x in mat[y].indices {
        let rowSum = rowsSums[y, default: 0]
        let colSum = colsSums[x, default: 0]
        if mat[y][x] == 1, rowSum == 1, colSum == 1 {
          specialNumbers += 1
        }
      }
    }

    return specialNumbers
  }
}
