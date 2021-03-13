@testable
import Leetcode
import XCTest

final class CheckIfBinaryStringHasAtMostOneSegmentOfOnesTests: XCTestCase {
  func testCheckOnesSegment1() {
    let input = "1001"
    let output = false
    XCTAssertEqual(CheckIfBinaryStringHasAtMostOneSegmentOfOnes().checkOnesSegment(input), output)
  }

  func testCheckOnesSegment2() {
    let input = "110"
    let output = true
    XCTAssertEqual(CheckIfBinaryStringHasAtMostOneSegmentOfOnes().checkOnesSegment(input), output)
  }

  func testCheckOnesSegment3() {
    let input = "11100"
    let output = true
    XCTAssertEqual(CheckIfBinaryStringHasAtMostOneSegmentOfOnes().checkOnesSegment(input), output)
  }

  func testCheckOnesSegment4() {
    let input = "10101"
    let output = false
    XCTAssertEqual(CheckIfBinaryStringHasAtMostOneSegmentOfOnes().checkOnesSegment(input), output)
  }

  func testCheckOnesSegment5() {
    let input = "1111"
    let output = true
    XCTAssertEqual(CheckIfBinaryStringHasAtMostOneSegmentOfOnes().checkOnesSegment(input), output)
  }

  func testCheckOnesSegment6() {
    let input = ""
    let output = true
    XCTAssertEqual(CheckIfBinaryStringHasAtMostOneSegmentOfOnes().checkOnesSegment(input), output)
  }
}
