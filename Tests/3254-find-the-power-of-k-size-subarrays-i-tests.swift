@testable
import Leetcode
import XCTest

final class FindThePowerOfKSizeSubarraysITests: XCTestCase {
  func testResultsArray1() {
    let input = ([1, 2, 3, 4, 3, 2, 5], 3)
    let output = [3, 4, -1, -1, -1]
    XCTAssertEqual(FindThePowerOfKSizeSubarraysI().resultsArray(input.0, input.1), output)
  }

  func testResultsArray2() {
    let input = ([2, 2, 2, 2, 2], 4)
    let output = [-1, -1]
    XCTAssertEqual(FindThePowerOfKSizeSubarraysI().resultsArray(input.0, input.1), output)
  }

  func testResultsArray3() {
    let input = ([3, 2, 3, 2, 3, 2], 2)
    let output = [-1, 3, -1, 3, -1]
    XCTAssertEqual(FindThePowerOfKSizeSubarraysI().resultsArray(input.0, input.1), output)
  }

  func testResultsArray4() {
    let input = ([1, 3, 4], 2)
    let output = [-1, 4]
    XCTAssertEqual(FindThePowerOfKSizeSubarraysI().resultsArray(input.0, input.1), output)
  }
}
