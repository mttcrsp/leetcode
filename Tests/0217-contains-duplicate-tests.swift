@testable
import Leetcode
import XCTest

final class ContainsDuplicateTests: XCTestCase {
  func testContainsDuplicate1() {
    let input = [1, 2, 3, 1]
    let output = true
    XCTAssertEqual(ContainsDuplicate().containsDuplicate(input), output)
  }

  func testContainsDuplicate2() {
    let input = [1, 2, 3, 4]
    let output = false
    XCTAssertEqual(ContainsDuplicate().containsDuplicate(input), output)
  }

  func testContainsDuplicate3() {
    let input = [1, 1, 1, 3, 3, 4, 3, 2, 4, 2]
    let output = true
    XCTAssertEqual(ContainsDuplicate().containsDuplicate(input), output)
  }
}
