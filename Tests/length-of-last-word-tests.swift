@testable
import Leetcode
import XCTest

extension SolutionTests {
  func testlengthOfLastWord1() {
    let input = "Hello World"
    let output = 5
    XCTAssertEqual(Solution().lengthOfLastWord(input), output)
  }

  func testlengthOfLastWord2() {
    let input = "HelloWorld"
    let output = 10
    XCTAssertEqual(Solution().lengthOfLastWord(input), output)
  }

  func testlengthOfLastWord3() {
    let input = ""
    let output = 0
    XCTAssertEqual(Solution().lengthOfLastWord(input), output)
  }

  func testlengthOfLastWord4() {
    let input = "a "
    let output = 1
    XCTAssertEqual(Solution().lengthOfLastWord(input), output)
  }
}
