@testable
import Leetcode
import Testing

@Suite
struct ReverseStringTests {
  @Test func testReverseString1() {
    var input: [Character] = ["h", "e", "l", "l", "o"]
    ReverseString().reverseString(&input)

    let output: [Character] = ["o", "l", "l", "e", "h"]
    #expect(input == output)
  }

  @Test func testReverseString2() {
    var input: [Character] = ["H", "a", "n", "n", "a", "h"]
    ReverseString().reverseString(&input)

    let output: [Character] = ["h", "a", "n", "n", "a", "H"]
    #expect(input == output)
  }
}
