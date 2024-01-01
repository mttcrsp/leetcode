@testable
import Leetcode
import XCTest

final class AssignCookiesTests: XCTestCase {
  func testTestFindcontentchildren1() {
    let input = ([1, 2, 3], [1, 1])
    let output = 1
    XCTAssertEqual(AssignCookies().findContentChildren(input.0, input.1), output)
  }

  func testTestFindcontentchildren2() {
    let input = ([1, 2], [1, 2, 3])
    let output = 2
    XCTAssertEqual(AssignCookies().findContentChildren(input.0, input.1), output)
  }

  func testTestFindcontentchildren3() {
    let input = ([1, 2], [] as [Int])
    let output = 0
    XCTAssertEqual(AssignCookies().findContentChildren(input.0, input.1), output)
  }

  func testTestFindcontentchildren4() {
    let input = ([10], [2, 2, 2, 2, 2] as [Int])
    let output = 0
    XCTAssertEqual(AssignCookies().findContentChildren(input.0, input.1), output)
  }
}
