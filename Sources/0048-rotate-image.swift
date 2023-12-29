/// https://leetcode.com/problems/rotate-image/
struct RotateImage {
  func rotate(_ matrix: inout [[Int]]) {
    var left = 0, right = matrix.count-1

    while left < right {
      for i in 0 ..< right-left {
        let top = left, bottom = right
        let topLeft = matrix[top][left+i]
        matrix[top][left+i] = matrix[bottom-i][left]
        matrix[bottom-i][left] = matrix[bottom][right-i]
        matrix[bottom][right-i] = matrix[top+i][right]
        matrix[top+i][right] = topLeft
      }

      left += 1
      right -= 1
    }
  }
}
