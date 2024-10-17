@testable
import Leetcode
import Testing

@Suite
struct ReplaceElementsWithGreatestElementOnRightSideTests {
  @Test func testReplaceElements1() {
    let input = [17, 18, 5, 4, 6, 1]
    let output = [18, 6, 6, 6, 1, -1]
    #expect(ReplaceElementsWithGreatestElementOnRightSide().replaceElements(input) == output)
  }
}
