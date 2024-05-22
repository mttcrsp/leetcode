/// https://leetcode.com/problems/verifying-an-alien-dictionary/
struct VerifyingAnAlienDictionary {
  func isAlienSorted(_ words: [String], _ order: String) -> Bool {
    var alphabeticalIndex: [Character: Int] = [:]
    for (index, character) in order.enumerated() {
      alphabeticalIndex[character] = index
    }

    func isAlienSorted(_ lhs: String, _ rhs: String) -> Bool {
      var lhsIndex = lhs.startIndex
      var rhsIndex = rhs.startIndex
      while lhsIndex < lhs.endIndex, rhsIndex < rhs.endIndex {
        let lhsWeight = alphabeticalIndex[lhs[lhsIndex]]!
        let rhsWeight = alphabeticalIndex[rhs[rhsIndex]]!
        guard lhsWeight == rhsWeight
        else { return lhsWeight < rhsWeight }
        lhsIndex = lhs.index(after: lhsIndex)
        rhsIndex = rhs.index(after: rhsIndex)
      }
      return lhs.count <= rhs.count
    }

    for i in words.indices.dropFirst() {
      if !isAlienSorted(words[i-1], words[i]) {
        return false
      }
    }

    return true
  }
}
