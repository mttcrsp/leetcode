@testable
import Leetcode
import XCTest

extension SolutionTests {
  func testKClosest1() {
    let input = ([[1, 3], [-2, 2]], 1)
    let output = [[-2, 2]]
    XCTAssertEqual(Set(Solution().kClosest(input.0, input.1)), Set(output))
  }

  func testKClosest2() {
    let input = ([[3, 3], [5, -1], [-2, 4]], 2)
    let output = [[3, 3], [-2, 4]]
    XCTAssertEqual(Set(Solution().kClosest(input.0, input.1)), Set(output))
  }
}
