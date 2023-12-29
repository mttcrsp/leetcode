/// https://leetcode.com/problems/largest-number/
struct LargestNumber {
  func largestNumber(_ numbers: [Int]) -> String {
    guard !numbers.allSatisfy({ number in number == 0 }) else { return "0" }

    var strings = numbers.map { number in String(number) }
    strings.sort { lhs, rhs in lhs+rhs > rhs+lhs }
    return strings.joined()
  }
}
