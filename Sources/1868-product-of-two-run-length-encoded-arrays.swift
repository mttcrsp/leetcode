/// https://leetcode.com/problems/product-of-two-run-length-encoded-arrays/
struct ProductOfTwoRunLengthEncodedArrays {
  func findRLEArray(_ encoded1: [[Int]], _ encoded2: [[Int]]) -> [[Int]] {
    var encoded1 = encoded1
    var encoded2 = encoded2
    var result: [[Int]] = []
    var i = 0
    var j = 0
    while i < encoded1.count, j < encoded2.count {
      let count = min(encoded1[i][1], encoded2[j][1])
      let product = encoded1[i][0]*encoded2[j][0]
      if result.count > 0, product == result[result.count-1][0] {
        result[result.count-1][1] += count
      } else {
        result.append([product, count])
      }

      if count == encoded1[i][1] {
        i += 1
      } else {
        encoded1[i][1] -= count
      }

      if count == encoded2[j][1] {
        j += 1
      } else {
        encoded2[j][1] -= count
      }
    }

    return result
  }
}
