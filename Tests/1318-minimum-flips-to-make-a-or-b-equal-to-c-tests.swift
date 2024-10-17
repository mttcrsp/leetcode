@testable
import Leetcode
import Testing

@Suite
struct MinimumFlipsToMakeAOrBEqualToCTests {
  @Test func testMinFlips1() {
    let input = (2, 6, 5)
    let output = 3
    #expect(MinimumFlipsToMakeAOrBEqualToC().minFlips(input.0, input.1, input.2) == output)
  }

  @Test func testMinFlips2() {
    let input = (4, 2, 7)
    let output = 1
    #expect(MinimumFlipsToMakeAOrBEqualToC().minFlips(input.0, input.1, input.2) == output)
  }

  @Test func testMinFlips3() {
    let input = (1, 2, 3)
    let output = 0
    #expect(MinimumFlipsToMakeAOrBEqualToC().minFlips(input.0, input.1, input.2) == output)
  }

  @Test func testMinFlips4() {
    let input = (22145, 17643, 23881)
    let output = 7
    #expect(MinimumFlipsToMakeAOrBEqualToC().minFlips(input.0, input.1, input.2) == output)
  }

  @Test func testMinFlips5() {
    let input = (5, 2, 8)
    let output = 4
    #expect(MinimumFlipsToMakeAOrBEqualToC().minFlips(input.0, input.1, input.2) == output)
  }
}
