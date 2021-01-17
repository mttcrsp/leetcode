@testable
import Leetcode
import XCTest

final class LargestNumberTests: XCTestCase {
  func testLargestNumber1() {
    let input: [Int] = []
    let output = "0"
    XCTAssertEqual(LargestNumber().largestNumber(input), output)
  }

  func testLargestNumber2() {
    let input = [0, 0]
    let output = "0"
    XCTAssertEqual(LargestNumber().largestNumber(input), output)
  }

  func testLargestNumber3() {
    let input = [57, 5]
    let output = "575"
    XCTAssertEqual(LargestNumber().largestNumber(input), output)
  }

  func testLargestNumber4() {
    let input = [52, 5]
    let output = "552"
    XCTAssertEqual(LargestNumber().largestNumber(input), output)
  }

  func testLargestNumber5() {
    let input = [883, 8]
    let output = "8883"
    XCTAssertEqual(LargestNumber().largestNumber(input), output)
  }

  func testLargestNumber6() {
    let input = [12, 121]
    let output = "12121"
    XCTAssertEqual(LargestNumber().largestNumber(input), output)
  }

  func testLargestNumber7() {
    let input = [58, 5859]
    let output = "585958"
    XCTAssertEqual(LargestNumber().largestNumber(input), output)
  }

  func testLargestNumber8() {
    let input = [5859, 58]
    let output = "585958"
    XCTAssertEqual(LargestNumber().largestNumber(input), output)
  }

  func testLargestNumber9() {
    let input = [3, 30, 34, 5, 9]
    let output = "9534330"
    XCTAssertEqual(LargestNumber().largestNumber(input), output)
  }

  func testLargestNumber10() {
    let input = [1440, 7548, 4240, 6616, 733, 4712, 883, 8, 9576]
    let output = "9576888375487336616471242401440"
    XCTAssertEqual(LargestNumber().largestNumber(input), output)
  }
}
