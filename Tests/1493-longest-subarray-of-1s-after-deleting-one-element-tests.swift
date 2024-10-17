@testable
import Leetcode
import Testing

@Suite
struct LongestSubarrayOf1SAfterDeletingOneElementTests {
  @Test func testLongestsubarray1() {
    let input = [1, 1, 0, 1]
    let output = 3
    #expect(LongestSubarrayOf1SAfterDeletingOneElement().longestSubarray(input) == output)
  }

  @Test func testLongestsubarray2() {
    let input = [0, 1, 1, 1, 0, 1, 1, 0, 1]
    let output = 5
    #expect(LongestSubarrayOf1SAfterDeletingOneElement().longestSubarray(input) == output)
  }

  @Test func testLongestsubarray3() {
    let input = [1, 1, 1]
    let output = 2
    #expect(LongestSubarrayOf1SAfterDeletingOneElement().longestSubarray(input) == output)
  }

  @Test func testLongestsubarray4() {
    let input = [0, 1, 1, 1, 0]
    let output = 3
    #expect(LongestSubarrayOf1SAfterDeletingOneElement().longestSubarray(input) == output)
  }

  @Test func testLongestsubarray5() {
    let input = [0, 1, 1, 0, 0, 1, 0]
    let output = 2
    #expect(LongestSubarrayOf1SAfterDeletingOneElement().longestSubarray(input) == output)
  }
}
