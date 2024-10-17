@testable
import Leetcode
import Testing

@Suite
struct FindAllAnagramsInAStringTests {
  @Test func testFindAnagrams1() {
    let input = ("abababababa", "aabb")
    let output = [0, 1, 2, 3, 4, 5, 6, 7]
    #expect(FindAllAnagramsInAString().findAnagrams(input.0, input.1) == output)
  }

  @Test func testFindAnagrams2() {
    let input = ("aaaa", "aa")
    let output = [0, 1, 2]
    #expect(FindAllAnagramsInAString().findAnagrams(input.0, input.1) == output)
  }

  @Test func testFindAnagrams3() {
    let input = ("agoiuhr", "ggrhina")
    let output = [] as [Int]
    #expect(FindAllAnagramsInAString().findAnagrams(input.0, input.1) == output)
  }

  @Test func testFindAnagrams4() {
    let input = ("zaazbaazbazzz", "aab")
    let output = [4]
    #expect(FindAllAnagramsInAString().findAnagrams(input.0, input.1) == output)
  }

  @Test func testFindAnagrams5() {
    let input = ("cbaebabacd", "abc")
    let output = [0, 6]
    #expect(FindAllAnagramsInAString().findAnagrams(input.0, input.1) == output)
  }

  @Test func testFindAnagrams6() {
    let input = ("abab", "ab")
    let output = [0, 1, 2]
    #expect(FindAllAnagramsInAString().findAnagrams(input.0, input.1) == output)
  }
}
