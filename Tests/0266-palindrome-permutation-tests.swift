@testable
import Leetcode
import Testing

@Suite
struct PalindromePermutationTests {
  @Test func testCanPermutePalindrome1() {
    let input = "code"
    let output = false
    #expect(PalindromePermutation().canPermutePalindrome(input) == output)
  }

  @Test func testCanPermutePalindrome2() {
    let input = "aab"
    let output = true
    #expect(PalindromePermutation().canPermutePalindrome(input) == output)
  }

  @Test func testCanPermutePalindrome3() {
    let input = "carerac"
    let output = true
    #expect(PalindromePermutation().canPermutePalindrome(input) == output)
  }
}
