/// https://leetcode.com/problems/number-of-senior-citizens/
struct NumberOfSeniorCitizens {
  func countSeniors(_ details: [String]) -> Int {
    var count = 0
    for detail in details {
      let lhsIndex = detail.index(detail.startIndex, offsetBy: 11)
      let rhsIndex = detail.index(lhsIndex, offsetBy: 2)
      let age = Int(String(detail[lhsIndex ..< rhsIndex]))!
      if age > 60 {
        count += 1
      }
    }
    return count
  }
}
