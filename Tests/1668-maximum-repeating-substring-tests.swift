@testable
import Leetcode
import Testing

@Suite
struct MaximumRepeatingSubstringTests {
  @Test func testMaxRepeating1() {
    let input = ("ababc", "ab")
    let output = 2
    #expect(MaximumRepeatingSubstring().maxRepeating(input.0, input.1) == output)
  }

  @Test func testMaxRepeating2() {
    let input = ("ababc", "ba")
    let output = 1
    #expect(MaximumRepeatingSubstring().maxRepeating(input.0, input.1) == output)
  }

  @Test func testMaxRepeating3() {
    let input = ("ababc", "ac")
    let output = 0
    #expect(MaximumRepeatingSubstring().maxRepeating(input.0, input.1) == output)
  }

  @Test func testMaxRepeating4() {
    let input = ("a", "a")
    let output = 1
    #expect(MaximumRepeatingSubstring().maxRepeating(input.0, input.1) == output)
  }

  @Test func testMaxRepeating5() {
    let input = ("aaabaaaabaaabaaaabaaaabaaaabaaaaba", "aaaba")
    let output = 5
    #expect(MaximumRepeatingSubstring().maxRepeating(input.0, input.1) == output)
  }
}
