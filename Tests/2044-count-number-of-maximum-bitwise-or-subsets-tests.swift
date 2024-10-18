@testable
import Leetcode
import XCTest

final class CountNumberOfMaximumBitwiseOrSubsetsTests: XCTestCase {
  func testCountMaxOrSubsets1() {
    let input = [3, 1]
    let output = 2
    XCTAssertEqual(CountNumberOfMaximumBitwiseOrSubsets().countMaxOrSubsets(input), output)
  }

  func testCountMaxOrSubsets2() {
    let input = [2, 2, 2]
    let output = 7
    XCTAssertEqual(CountNumberOfMaximumBitwiseOrSubsets().countMaxOrSubsets(input), output)
  }

  func testCountMaxOrSubsets3() {
    let input = [3, 2, 1, 5]
    let output = 6
    XCTAssertEqual(CountNumberOfMaximumBitwiseOrSubsets().countMaxOrSubsets(input), output)
  }
}
