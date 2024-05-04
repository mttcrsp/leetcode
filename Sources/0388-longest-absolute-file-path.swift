/// https://leetcode.com/problems/longest-absolute-file-path/
struct LongestAbsoluteFilePath {
  func lengthLongestPath(_ input: String) -> Int {
    var longest = 0
    var lengths = [0: 0]
    for line in input.components(separatedBy: "\n") {
      var depth = 0
      for component in line.components(separatedBy: "\t") {
        if component == "" {
          depth += 1
        } else if component.contains(".") {
          longest = max(longest, lengths[depth, default: 0]+component.count)
        } else {
          lengths[depth+1] = lengths[depth, default: 0]+1+component.count
        }
      }
    }

    return longest
  }
}
