@testable
import Leetcode
import XCTest

final class FindLuckyIntegerInAnArrayTests: XCTestCase {
  func testFindLucky1() {
    let input = [2, 2, 3, 4]
    let output = 2
    XCTAssertEqual(FindLuckyIntegerInAnArray().findLucky(input), output)
  }

  func testFindLucky2() {
    let input = [1, 2, 2, 3, 3, 3]
    let output = 3
    XCTAssertEqual(FindLuckyIntegerInAnArray().findLucky(input), output)
  }

  func testFindLucky3() {
    let input = [2, 2, 2, 3, 3]
    let output = -1
    XCTAssertEqual(FindLuckyIntegerInAnArray().findLucky(input), output)
  }

  func testFindLucky4() {
    let input = [5]
    let output = -1
    XCTAssertEqual(FindLuckyIntegerInAnArray().findLucky(input), output)
  }

  func testFindLucky5() {
    let input = [7, 7, 7, 7, 7, 7, 7]
    let output = 7
    XCTAssertEqual(FindLuckyIntegerInAnArray().findLucky(input), output)
  }
}
