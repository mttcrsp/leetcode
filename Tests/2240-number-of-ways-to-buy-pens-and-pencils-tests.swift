@testable
import Leetcode
import Testing

@Suite
struct NumberOfWaysToBuyPensAndPencilsTests {
  @Test func testWaysToBuyPensPencils1() {
    let input = (20, 10, 5)
    let output = 9
    #expect(NumberOfWaysToBuyPensAndPencils().waysToBuyPensPencils(input.0, input.1, input.2) == output)
  }

  @Test func testWaysToBuyPensPencils2() {
    let input = (5, 10, 10)
    let output = 1
    #expect(NumberOfWaysToBuyPensAndPencils().waysToBuyPensPencils(input.0, input.1, input.2) == output)
  }
}
