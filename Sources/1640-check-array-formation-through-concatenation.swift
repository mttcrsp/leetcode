/// https://leetcode.com/problems/check-array-formation-through-concatenation/
struct CheckArrayFormationThroughConcatenation {
  func canFormArray(_ arr: [Int], _ pieces: [[Int]]) -> Bool {
    let piecesSet = Set(pieces)
    
    var matched = 0
    var current: [Int] = []
    for element in arr {
      current.append(element)
      if piecesSet.contains(current) {
        matched += current.count
        current = []
      }
    }
    
    return matched == arr.count
  }
}
