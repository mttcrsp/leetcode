/// https://leetcode.com/problems/group-shifted-strings/
class GroupShiftedStrings {
  func groupStrings(_ strings: [String]) -> [[String]] {
    let a: Character = "a"

    func distances(_ string: String) -> [Int] {
      var distances: [Int] = []
      for index in string.indices.dropFirst() {
        let lhsChar = string[string.index(before: index)]
        let rhsChar = string[index]
        let lhsValue = Int(lhsChar.asciiValue!-a.asciiValue!)
        let rhsValue = Int(rhsChar.asciiValue!-a.asciiValue!)
        distances.append((26+(rhsValue-lhsValue))%26)
      }

      return distances
    }

    var groups: [[Int]: [String]] = [:]
    for string in strings {
      let distances = distances(string)
      groups[distances, default: []].append(string)
    }

    return Array(groups.values)
  }
}
