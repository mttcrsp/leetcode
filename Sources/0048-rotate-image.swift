/// https://leetcode.com/problems/rotate-image/
struct RotateImage {
  func rotate(_ matrix: inout [[Int]]) {
    let n = matrix.count

    for i in 0 ..< n {
      for j in i ..< n where i != j {
        let tmp = matrix[j][i]
        matrix[j][i] = matrix[i][j]
        matrix[i][j] = tmp
      }
    }

    for i in 0 ..< n {
      matrix[i].reverse()
    }
  }
}
