@testable
import Leetcode
import Testing

@Suite
struct MinimumNumberOfPushesToTypeWordITests {
  @Test func testMinimumpushes1() {
    let input = "abcde"
    let output = 5
    #expect(MinimumNumberOfPushesToTypeWordI().minimumPushes(input) == output)
  }

  @Test func testMinimumpushes2() {
    let input = "xycdefghij"
    let output = 12
    #expect(MinimumNumberOfPushesToTypeWordI().minimumPushes(input) == output)
  }
}
