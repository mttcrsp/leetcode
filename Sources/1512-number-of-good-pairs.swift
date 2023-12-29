/// https://leetcode.com/problems/number-of-good-pairs/
struct NumberOfGoodPairs {
  func numIdenticalPairs(_ numbers: [Int]) -> Int {
    var counts: [Int: Int] = [:]
    for number in numbers {
      counts[number, default: 0] += 1
    }

    var result = 0
    for (_, count) in counts {
      result += (count*(count-1))/2
    }
    return result
  }
}
