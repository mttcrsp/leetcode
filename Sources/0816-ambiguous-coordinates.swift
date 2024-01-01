/// https://leetcode.com/problems/ambiguous-coordinates/
struct AmbiguousCoordinates {
  func ambiguousCoordinates(_ s: String) -> [String] {
    func possibleRepresentations(_ value: Substring) -> [String] {
      if value.isEmpty {
        return []
      } else if value.count > 1, value.first == "0", value.last == "0" {
        return []
      } else if value.count > 1, value.first == "0" {
        return ["0.\(value[value.index(after: value.startIndex)...])"]
      } else if value.count == 1 || value.last == "0" {
        return [String(value)]
      }

      var result: [String] = [String(value)]
      for i in value.indices where i != value.startIndex {
        result.append("\(value[value.startIndex ..< i]).\(value[i...])")
      }
      return result
    }

    var result: [String] = []
    for i in s.indices.dropFirst().dropLast(2) {
      let prefixRange = s.index(after: s.startIndex) ..< s.index(after: i)
      let suffixRange = s.index(after: i) ..< s.index(before: s.endIndex)
      let prefixCombinations = possibleRepresentations(s[prefixRange])
      let suffixCombinations = possibleRepresentations(s[suffixRange])
      for prefixCombination in prefixCombinations {
        for suffixCombinations in suffixCombinations {
          result.append("(\(prefixCombination), \(suffixCombinations))")
        }
      }
    }
    return result
  }
}
