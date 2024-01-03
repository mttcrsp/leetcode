@testable
import Leetcode
import XCTest

final class RemoveTrailingZerosFromAStringTests: XCTestCase {
  func testTestRemovetrailingzeros1() {
    let input = "51230100"
    let output = "512301"
    XCTAssertEqual(RemoveTrailingZerosFromAString().removeTrailingZeros(input), output)
  }

  func testTestRemovetrailingzeros2() {
    let input = "123"
    let output = "123"
    XCTAssertEqual(RemoveTrailingZerosFromAString().removeTrailingZeros(input), output)
  }
}
