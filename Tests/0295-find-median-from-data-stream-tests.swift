@testable
import Leetcode
import XCTest

final class FindMedianFromDataStreamTests: XCTestCase {
  func testAddNum1() {
    let finder = MedianFinder()
    finder.addNum(1)
    finder.addNum(2)
    XCTAssertEqual(finder.findMedian(), 1.5)
    finder.addNum(3)
    XCTAssertEqual(finder.findMedian(), 2)
  }

  func testAddNum2() {
    let finder = MedianFinder()
    finder.addNum(3)
    finder.addNum(2)
    XCTAssertEqual(finder.findMedian(), 2.5)
    finder.addNum(1)
    XCTAssertEqual(finder.findMedian(), 2)
  }
}
