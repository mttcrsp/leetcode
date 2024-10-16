/// https://leetcode.com/problems/longest-common-prefix/
struct LongestCommonPrefix {
  func longestCommonPrefix(_ strs: [String]) -> String {
    guard let first = strs.first else { return "" }

    var result = ""
    for index in first.indices {
      for str in strs.dropFirst() {
        if index == str.endIndex || str[index] != first[index] {
          return result
        }
      }

      result.append(first[index])
    }

    return result
  }
}
