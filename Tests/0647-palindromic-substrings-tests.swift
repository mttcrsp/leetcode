@testable
import Leetcode
import Testing

@Suite
struct PalindromicSubstringsTests {
  @Test func testCountSubstrings1() {
    let input = "abc"
    let output = 3
    #expect(PalindromicSubstrings().countSubstrings(input) == output)
  }

  @Test func testCountSubstrings2() {
    let input = "aaa"
    let output = 6
    #expect(PalindromicSubstrings().countSubstrings(input) == output)
  }
}
