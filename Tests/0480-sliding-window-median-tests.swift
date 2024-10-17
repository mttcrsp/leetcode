@testable
import Leetcode
import Testing

@Suite
struct SlidingWindowMedianTests {
  @Test func testMedianSlidingWindow1() {
    let input = ([1, 3, -1, -3, 5, 3, 6, 7], 3)
    let output = [1.00000, -1.00000, -1.00000, 3.00000, 5.00000, 6.00000]
    #expect(SlidingWindowMedian().medianSlidingWindow(input.0, input.1) == output)
  }

  @Test func testMedianSlidingWindow2() {
    let input = ([1, 2, 3, 4, 2, 3, 1, 4, 2], 3)
    let output = [2.00000, 3.00000, 3.00000, 3.00000, 2.00000, 3.00000, 2.00000]
    #expect(SlidingWindowMedian().medianSlidingWindow(input.0, input.1) == output)
  }
}
