/// https://leetcode.com/problems/contains-duplicate/
struct ContainsDuplicate {
  func containsDuplicate(_ numbers: [Int]) -> Bool {
    var encountered: Set<Int> = []
    for number in numbers {
      guard !encountered.contains(number) else { return true }
      encountered.insert(number)
    }
    return false
  }
}
