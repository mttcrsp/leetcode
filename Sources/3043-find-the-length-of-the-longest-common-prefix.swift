/// https://leetcode.com/problems/find-the-length-of-the-longest-common-prefix/
struct FindTheLengthOfTheLongestCommonPrefix {
  func longestCommonPrefix(_ arr1: [Int], _ arr2: [Int]) -> Int {
    class Node {
      var value: Int
      var children: [Int: Node] = [:]
      init(value: Int) { self.value = value }
    }

    func digits(from value: Int) -> any Sequence<Int> {
      var remainder = value
      var digits: [Int] = []
      while remainder > 0 {
        digits.append(remainder%10)
        remainder /= 10
      }

      return digits.reversed()
    }

    let root = Node(value: 0)
    for number in arr1 {
      var current = root
      for digit in digits(from: number) {
        let node = current.children[digit] ?? Node(value: digit)
        current.children[digit] = node
        current = node
      }
    }

    var maxCount = 0
    for number in arr2 {
      var count = 0
      var current = root
      for digit in digits(from: number) {
        if let child = current.children[digit] {
          count += 1
          current = child
        } else {
          break
        }
      }

      maxCount = max(maxCount, count)
    }

    return maxCount
  }
}
