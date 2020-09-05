@testable
import Leetcode
import XCTest

extension SolutionTests {
  func testReverseString1() {
    var input: [Character] = ["h", "e", "l", "l", "o"]
    Solution().reverseString(&input)

    let output: [Character] = ["o", "l", "l", "e", "h"]
    XCTAssertEqual(input, output)
  }

  func testReverseString2() {
    var input: [Character] = ["H", "a", "n", "n", "a", "h"]
    Solution().reverseString(&input)

    let output: [Character] = ["h", "a", "n", "n", "a", "H"]
    XCTAssertEqual(input, output)
  }
}
