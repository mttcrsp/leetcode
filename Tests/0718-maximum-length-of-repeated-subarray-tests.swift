@testable
import Leetcode
import Testing

@Suite
struct MaximumLengthOfRepeatedSubarrayTests {
  @Test func testFindLength1() {
    let input = ([1, 2, 3, 2, 1], [3, 2, 1, 4, 7])
    let output = 3
    #expect(MaximumLengthOfRepeatedSubarray().findLength(input.0, input.1) == output)
  }

  @Test func testFindLength2() {
    let input = ([0, 0, 0, 0, 0], [0, 0, 0, 0, 0])
    let output = 5
    #expect(MaximumLengthOfRepeatedSubarray().findLength(input.0, input.1) == output)
  }

  @Test func testFindLength3() {
    let input = ([1, 2, 3, 2, 1], [3, 2, 1, 4])
    let output = 3
    #expect(MaximumLengthOfRepeatedSubarray().findLength(input.0, input.1) == output)
  }
}
