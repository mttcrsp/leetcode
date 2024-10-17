@testable
import Leetcode
import Testing

@Suite
struct ValidAnagramTests {
  @Test func testIsAnagram1() {
    let input = ("anagram", "nagaram")
    let output = true
    #expect(ValidAnagram().isAnagram(input.0, input.1) == output)
  }

  @Test func testIsAnagram2() {
    let input = ("rat", "car")
    let output = false
    #expect(ValidAnagram().isAnagram(input.0, input.1) == output)
  }

  @Test func testIsAnagram3() {
    let input = ("ab", "a")
    let output = false
    #expect(ValidAnagram().isAnagram(input.0, input.1) == output)
  }
}
