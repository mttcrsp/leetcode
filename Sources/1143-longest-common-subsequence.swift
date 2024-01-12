/// https://leetcode.com/problems/longest-common-subsequence/
struct LongestCommonSubsequence {
  func longestCommonSubsequence(_ text1: String, _ text2: String) -> Int {
    let text1 = Array(text1)
    let text2 = Array(text2)

    let row = [Int](repeating: 0, count: text2.count+1)
    var matrix = [[Int]](repeating: row, count: text1.count+1)
    for i in matrix.indices.dropFirst() {
      for j in matrix[i].indices.dropFirst() {
        matrix[i][j] =
          text1[i-1] == text2[j-1]
            ? matrix[i-1][j-1]+1
            : max(matrix[i-1][j], matrix[i][j-1])
      }
    }

    return matrix[text1.count][text2.count]
  }
}
