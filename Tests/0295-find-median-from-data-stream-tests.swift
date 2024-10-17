@testable
import Leetcode
import Testing

@Suite
struct FindMedianFromDataStreamTests {
  @Test func testAddNum1() {
    let finder = MedianFinder()
    finder.addNum(1)
    finder.addNum(2)
    #expect(finder.findMedian() == 1.5)
    finder.addNum(3)
    #expect(finder.findMedian() == 2)
  }

  @Test func testAddNum2() {
    let finder = MedianFinder()
    finder.addNum(3)
    finder.addNum(2)
    #expect(finder.findMedian() == 2.5)
    finder.addNum(1)
    #expect(finder.findMedian() == 2)
  }
}
