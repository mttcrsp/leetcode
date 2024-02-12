@testable
import Leetcode
import XCTest

final class KidsWithTheGreatestNumberOfCandiesTests: XCTestCase {
  func testKidsWithCandies1() {
    let input = ([2, 3, 5, 1, 3], 3)
    let output = [true, true, true, false, true]
    XCTAssertEqual(KidsWithTheGreatestNumberOfCandies().kidsWithCandies(input.0, input.1), output)
  }

  func testKidsWithCandies2() {
    let input = ([4, 2, 1, 1, 2], 1)
    let output = [true, false, false, false, false]
    XCTAssertEqual(KidsWithTheGreatestNumberOfCandies().kidsWithCandies(input.0, input.1), output)
  }

  func testKidsWithCandies3() {
    let input = ([12, 1, 12], 0)
    let output = [true, false, true]
    XCTAssertEqual(KidsWithTheGreatestNumberOfCandies().kidsWithCandies(input.0, input.1), output)
  }
}
