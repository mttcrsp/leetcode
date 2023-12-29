/// https://leetcode.com/problems/rotate-array/
struct RotateArray {
  func rotate(_ numbers: inout [Int], _ k: Int) {
    var rotated = numbers
    for i in numbers.indices {
      let offset = i-(k%numbers.count)+numbers.count
      rotated[i] = numbers[offset%numbers.count]
    }
    for (i, number) in rotated.enumerated() {
      numbers[i] = number
    }
  }
}
