@testable
import Leetcode
import Testing

@Suite
struct KthMissingPositiveNumberTests {
  @Test func testFindKthPositive1() {
    let input = ([2, 3, 4, 7, 11], 5)
    let output = 9
    #expect(KthMissingPositiveNumber().findKthPositive(input.0, input.1) == output)
  }

  @Test func testFindKthPositive2() {
    let input = ([1, 2, 3, 4], 2)
    let output = 6
    #expect(KthMissingPositiveNumber().findKthPositive(input.0, input.1) == output)
  }

  @Test func testFindKthPositive3() {
    let input = ([99], 5)
    let output = 5
    #expect(KthMissingPositiveNumber().findKthPositive(input.0, input.1) == output)
  }
}
