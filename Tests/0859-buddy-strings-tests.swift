@testable
import Leetcode
import Testing

@Suite
struct BuddyStringsTests {
  @Test func testBuddyStrings1() {
    let input = ("ab", "ba")
    let output = true
    #expect(BuddyStrings().buddyStrings(input.0, input.1) == output)
  }

  @Test func testBuddyStrings2() {
    let input = ("ab", "ab")
    let output = false
    #expect(BuddyStrings().buddyStrings(input.0, input.1) == output)
  }

  @Test func testBuddyStrings3() {
    let input = ("aa", "aa")
    let output = true
    #expect(BuddyStrings().buddyStrings(input.0, input.1) == output)
  }

  @Test func testBuddyStrings4() {
    let input = ("aaaaaaabc", "aaaaaaacb")
    let output = true
    #expect(BuddyStrings().buddyStrings(input.0, input.1) == output)
  }

  @Test func testBuddyStrings5() {
    let input = ("ab", "babbb")
    let output = false
    #expect(BuddyStrings().buddyStrings(input.0, input.1) == output)
  }
}
