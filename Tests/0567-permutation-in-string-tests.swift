@testable
import Leetcode
import Testing

@Suite
struct PermutationInStringTests {
  @Test func testCheckinclusion1() {
    let input = ("ab", "eidbaooo")
    let output = true
    #expect(PermutationInString().checkInclusion(input.0, input.1) == output)
  }

  @Test func testCheckinclusion2() {
    let input = ("ab", "eidboaoo")
    let output = false
    #expect(PermutationInString().checkInclusion(input.0, input.1) == output)
  }

  @Test func testCheckinclusion3() {
    let input = ("ab", "eidba")
    let output = true
    #expect(PermutationInString().checkInclusion(input.0, input.1) == output)
  }
}
