@testable
import Leetcode
import XCTest

final class TwoSumIiInputArrayIsSortedTests: XCTestCase {
  func testTwosum1() {
    let input = ([2, 7, 11, 15], 9)
    let output = [1, 2]
    XCTAssertEqual(TwoSumIiInputArrayIsSorted().twoSum(input.0, input.1), output)
  }

  func testTwosum2() {
    let input = ([2, 3, 4], 6)
    let output = [1, 3]
    XCTAssertEqual(TwoSumIiInputArrayIsSorted().twoSum(input.0, input.1), output)
  }

  func testTwosum3() {
    let input = ([-1, 0], -1)
    let output = [1, 2]
    XCTAssertEqual(TwoSumIiInputArrayIsSorted().twoSum(input.0, input.1), output)
  }
}
