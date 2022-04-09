/// https://leetcode.com/problems/edit-distance/
class EditDistance {
  func minDistance(_ word1: String, _ word2: String) -> Int {
    let word1 = Array(word1)
    let word2 = Array(word2)

    let row = [Int](repeating: 0, count: word1.count + 1)
    var matrix = [[Int]](repeating: row, count: word2.count + 1)

    for i in matrix.indices {
      for j in matrix[i].indices {
        if i == 0 {
          matrix[i][j] = j
        } else if j == 0 {
          matrix[i][j] = i
        } else {
          let char1 = word1[j - 1]
          let char2 = word2[i - 1]
          if char1 == char2 {
            matrix[i][j] = matrix[i - 1][j - 1]
          } else {
            matrix[i][j] = 1 + min(matrix[i][j - 1], matrix[i - 1][j], matrix[i - 1][j - 1])
          }
        }
      }
    }

    return matrix.last?.last ?? 0
  }
}
