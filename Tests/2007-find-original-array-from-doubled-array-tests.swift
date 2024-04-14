@testable
import Leetcode
import XCTest

final class FindOriginalArrayFromDoubledArrayTests: XCTestCase {
  func testFindOriginalArray1() {
    let input = [1, 3, 4, 2, 6, 8]
    let output = [1, 3, 4]
    XCTAssertEqual(FindOriginalArrayFromDoubledArray().findOriginalArray(input), output)
  }

  func testFindOriginalArray2() {
    let input = [6, 3, 0, 1]
    let output = [] as [Int]
    XCTAssertEqual(FindOriginalArrayFromDoubledArray().findOriginalArray(input), output)
  }

  func testFindOriginalArray3() {
    let input = [1]
    let output = [] as [Int]
    XCTAssertEqual(FindOriginalArrayFromDoubledArray().findOriginalArray(input), output)
  }

  func testFindOriginalArray4() {
    let input = [0, 0, 0, 0]
    let output = [0, 0]
    XCTAssertEqual(FindOriginalArrayFromDoubledArray().findOriginalArray(input), output)
  }
}
