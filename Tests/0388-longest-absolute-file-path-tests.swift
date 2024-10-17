@testable
import Leetcode
import Testing

@Suite
struct LongestAbsoluteFilePathTests {
  @Test func testLengthLongestPath1() {
    let input = "dir\n\tsubdir1\n\tsubdir2\n\t\tfile.ext"
    let output = 20
    #expect(LongestAbsoluteFilePath().lengthLongestPath(input) == output)
  }

  @Test func testLengthLongestPath2() {
    let input = "dir\n\tsubdir1\n\t\tfile1.ext\n\t\tsubsubdir1\n\tsubdir2\n\t\tsubsubdir2\n\t\t\tfile2.ext"
    let output = 32
    #expect(LongestAbsoluteFilePath().lengthLongestPath(input) == output)
  }

  @Test func testLengthLongestPath3() {
    let input = "a"
    let output = 0
    #expect(LongestAbsoluteFilePath().lengthLongestPath(input) == output)
  }
}
