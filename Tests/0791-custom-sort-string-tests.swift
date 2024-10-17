@testable
import Leetcode
import Testing

@Suite
struct CustomSortStringTests {
  @Test func testCustomSortString1() {
    let input = ("cba", "abcd")
    let output = "cbad"
    #expect(CustomSortString().customSortString(input.0, input.1) == output)
  }
}
