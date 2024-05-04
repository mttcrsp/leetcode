@testable
import Leetcode
import XCTest

final class LongestAbsoluteFilePathTests: XCTestCase {
  func testLengthLongestPath1() {
    let input = "dir\n\tsubdir1\n\tsubdir2\n\t\tfile.ext"
    let output = 20
    XCTAssertEqual(LongestAbsoluteFilePath().lengthLongestPath(input), output)
  }

  func testLengthLongestPath2() {
    let input = "dir\n\tsubdir1\n\t\tfile1.ext\n\t\tsubsubdir1\n\tsubdir2\n\t\tsubsubdir2\n\t\t\tfile2.ext"
    let output = 32
    XCTAssertEqual(LongestAbsoluteFilePath().lengthLongestPath(input), output)
  }

  func testLengthLongestPath3() {
    let input = "a"
    let output = 0
    XCTAssertEqual(LongestAbsoluteFilePath().lengthLongestPath(input), output)
  }
}
