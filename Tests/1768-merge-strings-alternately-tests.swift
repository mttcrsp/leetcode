@testable
import Leetcode
import Testing

@Suite
struct MergeStringsAlternatelyTests {
  @Test func testMergealternately1() {
    let input = ("abc", "pqr")
    let output = "apbqcr"
    #expect(MergeStringsAlternately().mergeAlternately(input.0, input.1) == output)
  }

  @Test func testMergealternately3() {
    let input = ("ab", "pqrs")
    let output = "apbqrs"
    #expect(MergeStringsAlternately().mergeAlternately(input.0, input.1) == output)
  }

  @Test func testMergealternately5() {
    let input = ("abcd", "pq")
    let output = "apbqcd"
    #expect(MergeStringsAlternately().mergeAlternately(input.0, input.1) == output)
  }
}
