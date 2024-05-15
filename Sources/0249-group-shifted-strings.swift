/// https://leetcode.com/problems/group-shifted-strings/
class GroupShiftedStrings {
  func groupStrings(_ strings: [String]) -> [[String]] {
    var groups: [[Int]: [String]] = [:]
    for string in strings {
      groups[normalize(string), default: []].append(string)
    }

    return Array(groups.values)
  }

  func normalize(_ string: String) -> [Int] {
    let characters = Array(string)
    var result = [0]
    for i in characters.indices.dropFirst() {
      let prevCharacter = characters[i-1]
      let currCharacter = characters[i]
      let distance = Int(currCharacter.asciiValue!)-Int(prevCharacter.asciiValue!)
      result.append((distance+26)%26)
    }

    return result
  }
}
