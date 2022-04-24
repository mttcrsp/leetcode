/// https://leetcode.com/problems/group-anagrams/
struct GroupAnagrams {
  func groupAnagrams(_ strings: [String]) -> [[String]] {
    var groupedStrings: [Int: [String]] = [:]
    for string in strings {
      var occurrences: [Character: Int] = [:]
      for character in string {
        occurrences[character, default: 0] += 1
      }
      groupedStrings[occurrences.hashValue, default: []].append(string)
    }
    return Array(groupedStrings.values)
  }
}
