@testable
import Leetcode
import XCTest

final class ClimbingStairsTests: XCTestCase {
  func testClimbstairs1() {
    let input = 2
    let output = 2
    XCTAssertEqual(ClimbingStairs().climbStairs(input), output)
  }

  func testClimbstairs2() {
    let input = 3
    let output = 3
    XCTAssertEqual(ClimbingStairs().climbStairs(input), output)
  }

  func testClimbstairs3() {
    let input = 45
    let output = 1_836_311_903
    XCTAssertEqual(ClimbingStairs().climbStairs(input), output)
  }
}
