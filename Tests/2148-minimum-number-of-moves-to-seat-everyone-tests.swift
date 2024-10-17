@testable
import Leetcode
import Testing

@Suite
struct MinimumNumberOfMovesToSeatEveryoneTests {
  @Test func testMinmovestoseat1() {
    let input = ([3, 1, 5], [2, 7, 4])
    let output = 4
    #expect(MinimumNumberOfMovesToSeatEveryone().minMovesToSeat(input.0, input.1) == output)
  }

  @Test func testMinmovestoseat2() {
    let input = ([4, 1, 5, 9], [1, 3, 2, 6])
    let output = 7
    #expect(MinimumNumberOfMovesToSeatEveryone().minMovesToSeat(input.0, input.1) == output)
  }

  @Test func testMinmovestoseat3() {
    let input = ([2, 2, 6, 6], [1, 3, 2, 6])
    let output = 4
    #expect(MinimumNumberOfMovesToSeatEveryone().minMovesToSeat(input.0, input.1) == output)
  }
}
