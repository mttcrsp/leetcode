@testable
import Leetcode
import XCTest

final class ReplaceElementsWithGreatestElementOnRightSideTests: XCTestCase {
  func testReplaceElements1() {
    let input = [17, 18, 5, 4, 6, 1]
    let output = [18, 6, 6, 6, 1, -1]
    XCTAssertEqual(ReplaceElementsWithGreatestElementOnRightSide().replaceElements(input), output)
  }
}
