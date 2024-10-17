@testable
import Leetcode
import Testing

@Suite
struct CanMakePalindromeFromSubstringTests {
  @Test func testCanMakePaliQueries1() {
    let input = ("abcda", [[3, 3, 0], [1, 2, 0], [0, 3, 1], [0, 3, 2], [0, 4, 1]])
    let output = [true, false, false, true, true]
    #expect(CanMakePalindromeFromSubstring().canMakePaliQueries(input.0, input.1) == output)
  }
}
