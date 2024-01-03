/// https://leetcode.com/problems/remove-trailing-zeros-from-a-string/
struct RemoveTrailingZerosFromAString {
  func removeTrailingZeros(_ num: String) -> String {
    var endIndex = num.endIndex
    for index in num.indices.reversed() {
      if num[index] == "0" {
        endIndex = index
      } else {
        break
      }
    }

    return String(num[num.startIndex ..< endIndex])
  }
}
