/// https://leetcode.com/problems/longest-consecutive-sequence/
struct LongestConsecutiveSequence {
  func longestConsecutive(_ numbers: [Int]) -> Int {
    let numbers = Set(numbers)

    var max = 0
    for number in numbers where !numbers.contains(number-1) {
      var count = 1
      while numbers.contains(number+count) {
        count += 1
      }
      max = Swift.max(max, count)
    }
    return max
  }
}
