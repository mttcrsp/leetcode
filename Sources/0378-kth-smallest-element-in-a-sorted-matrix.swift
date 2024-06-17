/// https://leetcode.com/problems/kth-smallest-element-in-a-sorted-matrix/
struct KthSmallestElementInASortedMatrix {
  func kthSmallest(_ matrix: [[Int]], _ k: Int) -> Int {
    var lhs = matrix[0][0]
    var rhs = matrix[matrix.count-1][matrix.count-1]

    while lhs < rhs {
      let mid = lhs+(rhs-lhs)/2
      var count = 0
      var row = matrix.count-1
      var col = 0
      var smaller = matrix[0][0]
      var larger = matrix[matrix.count-1][matrix.count-1]
      while row >= 0, col < matrix.count {
        if matrix[row][col] > mid {
          larger = min(larger, matrix[row][col])
          row -= 1
        } else {
          smaller = max(smaller, matrix[row][col])
          count += row+1
          col += 1
        }
      }

      if count < k {
        lhs = larger
      } else if count > k {
        rhs = smaller
      } else {
        return smaller
      }
    }

    return lhs
  }
}
