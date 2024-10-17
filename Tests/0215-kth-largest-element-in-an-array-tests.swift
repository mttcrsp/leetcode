@testable
import Leetcode
import Testing

@Suite
struct KthLargestElementInAnArrayTests {
  @Test func testFindkthlargest1() {
    let input = ([3, 2, 1, 5, 6, 4], 2)
    let output = 5
    #expect(KthLargestElementInAnArray().findKthLargest(input.0, input.1) == output)
  }

  @Test func testFindkthlargest2() {
    let input = ([3, 2, 3, 1, 2, 4, 5, 5, 6], 4)
    let output = 4
    #expect(KthLargestElementInAnArray().findKthLargest(input.0, input.1) == output)
  }

  @Test func testFindkthlargest3() {
    let input = ([-1, -1], 2)
    let output = -1
    #expect(KthLargestElementInAnArray().findKthLargest(input.0, input.1) == output)
  }
}
