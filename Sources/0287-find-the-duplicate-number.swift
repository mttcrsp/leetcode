/// https://leetcode.com/problems/find-the-duplicate-number/
struct FindTheDuplicateNumber {
  func findDuplicate(_ numbers: [Int]) -> Int {
    var slow = 0
    var fast = 0
    repeat {
      slow = numbers[slow]
      fast = numbers[numbers[fast]]
    } while slow != fast

    var slow2 = 0
    repeat {
      slow = numbers[slow]
      slow2 = numbers[slow2]
    } while slow != slow2

    return slow
  }
}
