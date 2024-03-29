@testable
import Leetcode
import XCTest

final class DivideAStringIntoGroupsOfSizeKTests: XCTestCase {
  func testDividestring1() {
    let input = ("abcdefghi", 3, "x" as Character)
    let output = ["abc", "def", "ghi"]
    XCTAssertEqual(DivideAStringIntoGroupsOfSizeK().divideString(input.0, input.1, input.2), output)
  }

  func testDividestring2() {
    let input = ("abcdefghij", 3, "x" as Character)
    let output = ["abc", "def", "ghi", "jxx"]
    XCTAssertEqual(DivideAStringIntoGroupsOfSizeK().divideString(input.0, input.1, input.2), output)
  }
}
