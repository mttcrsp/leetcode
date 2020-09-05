@testable
import Leetcode
import XCTest

extension SolutionTests {
  func testFindLengthOfLCIS1() {
    let input = [1, 3, 5, 4, 7]
    let output = 3
    XCTAssertEqual(Solution().findLengthOfLCIS(input), output)
  }

  func testFindLengthOfLCIS2() {
    let input = [2, 2, 2, 2, 2]
    let output = 1
    XCTAssertEqual(Solution().findLengthOfLCIS(input), output)
  }

  func testFindLengthOfLCIS3() {
    let input: [Int] = []
    let output = 0
    XCTAssertEqual(Solution().findLengthOfLCIS(input), output)
  }

  func testFindLengthOfLCIS4() {
    let input = [9, 8, 7, 6, 5]
    let output = 1
    XCTAssertEqual(Solution().findLengthOfLCIS(input), output)
  }

  func testFindLengthOfLCIS5() {
    let input = [9, 1, 2, 0, 3, 5, 6, 10, 1]
    let output = 5
    XCTAssertEqual(Solution().findLengthOfLCIS(input), output)
  }
}
