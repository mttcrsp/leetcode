@testable
import Leetcode
import XCTest

final class RemoveTrailingZerosFromAStringTests: XCTestCase {
  func testRemovetrailingzeros1() {
    let input = "51230100"
    let output = "512301"
    XCTAssertEqual(RemoveTrailingZerosFromAString().removeTrailingZeros(input), output)
  }

  func testRemovetrailingzeros2() {
    let input = "123"
    let output = "123"
    XCTAssertEqual(RemoveTrailingZerosFromAString().removeTrailingZeros(input), output)
  }
}
