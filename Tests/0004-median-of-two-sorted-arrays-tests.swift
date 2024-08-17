@testable
import Leetcode
import XCTest

final class MedianOfTwoSortedArraysTests: XCTestCase {
  func testFindMedianSortedArrays1() {
    let input = ([1, 3], [2])
    let output = 2.0
    XCTAssertEqual(MedianOfTwoSortedArrays().findMedianSortedArrays(input.0, input.1), output)
  }

  func testFindMedianSortedArrays2() {
    let input = ([1, 2], [3, 4])
    let output = 2.5
    XCTAssertEqual(MedianOfTwoSortedArrays().findMedianSortedArrays(input.0, input.1), output)
  }
}
