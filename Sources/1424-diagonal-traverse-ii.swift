/// https://leetcode.com/problems/diagonal-traverse-ii/
struct DiagonalTraverseIi {
  func findDiagonalOrder(_ nums: [[Int]]) -> [Int] {
    let rowsCount = nums.count
    var colsCount = 0
    for row in nums {
      colsCount = max(colsCount, row.count)
    }

    typealias Point = (row: Int, col: Int)

    var result: [Int] = []
    for row in 0 ..< rowsCount {
      var current: Point = (row, 0)
      while current.row >= 0, current.col < rowsCount {
        if current.col < nums[current.row].count {
          result.append(nums[current.row][current.col])
        }
        current = (current.row-1, current.col+1)
      }
    }

    for col in 1 ..< colsCount {
      var current: Point = (rowsCount-1, col)
      while current.row >= 0, current.col < colsCount {
        if current.col < nums[current.row].count {
          result.append(nums[current.row][current.col])
        }
        current = (current.row-1, current.col+1)
      }
    }

    return result
  }
}
