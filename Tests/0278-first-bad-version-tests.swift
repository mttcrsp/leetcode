@testable
import Leetcode
import Testing

@Suite
struct FirstBadVersionTests {
  @Test func testIsBadVersion1() {
    let input = (5, 4)
    let output = 4
    #expect(FirstBadVersion(firstBadVersion: input.1).firstBadVersion(input.0) == output)
  }

  @Test func testIsBadVersion2() {
    let input = (1, 1)
    let output = 1
    #expect(FirstBadVersion(firstBadVersion: input.1).firstBadVersion(input.0) == output)
  }
}
