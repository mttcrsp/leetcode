@testable
import Leetcode
import Testing

@Suite
struct BestPokerHandTests {
  @Test func testBesthand1() {
    let input = ([13, 2, 3, 1, 9], ["a", "a", "a", "a", "a"] as [Character])
    let output = "Flush"
    #expect(BestPokerHand().bestHand(input.0, input.1) == output)
  }

  @Test func testBesthand2() {
    let input = ([4, 4, 2, 4, 4], ["d", "a", "a", "b", "c"] as [Character])
    let output = "Three of a Kind"
    #expect(BestPokerHand().bestHand(input.0, input.1) == output)
  }

  @Test func testBesthand3() {
    let input = ([10, 10, 2, 12, 9], ["a", "b", "c", "a", "d"] as [Character])
    let output = "Pair"
    #expect(BestPokerHand().bestHand(input.0, input.1) == output)
  }
}
