@testable
import Leetcode
import XCTest

final class UniqueNumberOfOccurrencesTests: XCTestCase {
  func testUniqueoccurrences1() {
    let input = [1, 2, 2, 1, 1, 3]
    let output = true
    XCTAssertEqual(UniqueNumberOfOccurrences().uniqueOccurrences(input), output)
  }

  func testUniqueoccurrences2() {
    let input = [1, 2]
    let output = false
    XCTAssertEqual(UniqueNumberOfOccurrences().uniqueOccurrences(input), output)
  }

  func testUniqueoccurrences3() {
    let input = [-3, 0, 1, -3, 1, 1, 1, -3, 10, 0]
    let output = true
    XCTAssertEqual(UniqueNumberOfOccurrences().uniqueOccurrences(input), output)
  }
}
