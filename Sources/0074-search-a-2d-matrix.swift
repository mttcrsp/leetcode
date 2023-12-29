/// https://leetcode.com/problems/search-a-2d-matrix/
struct SearchA2DMatrix {
  func searchMatrix(_ matrix: [[Int]], _ target: Int) -> Bool {
    guard let firstRow = matrix.first, !firstRow.isEmpty else { return false }

    let m = matrix.count
    let n = firstRow.count

    var min = 0
    var max = (m*n)-1

    while min <= max {
      let index = (min+max)/2
      let x = index/n
      let y = index%n
      let value = matrix[x][y]

      if value == target {
        return true
      } else if value < target {
        min = index+1
      } else if value > target {
        max = index-1
      }
    }

    return false
  }
}
