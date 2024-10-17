@testable
import Leetcode
import Testing

@Suite
struct RemovingStarsFromAStringTests {
  @Test func testRemovestars1() {
    let input = "leet**cod*e"
    let output = "lecoe"
    #expect(RemovingStarsFromAString().removeStars(input) == output)
  }

  @Test func testRemovestars2() {
    let input = "erase*****"
    let output = ""
    #expect(RemovingStarsFromAString().removeStars(input) == output)
  }
}
