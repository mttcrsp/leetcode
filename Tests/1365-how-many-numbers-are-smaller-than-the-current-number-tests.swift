@testable
import Leetcode
import Testing

@Suite
struct HowManyNumbersAreSmallerThanTheCurrentNumberTests {
  @Test func testSmallerNumbersThanCurrent1() {
    let input = [8, 1, 2, 2, 3]
    let output = [4, 0, 1, 1, 3]
    #expect(HowManyNumbersAreSmallerThanTheCurrentNumber().smallerNumbersThanCurrent(input) == output)
  }

  @Test func testSmallerNumbersThanCurrent2() {
    let input = [6, 5, 4, 8]
    let output = [2, 1, 0, 3]
    #expect(HowManyNumbersAreSmallerThanTheCurrentNumber().smallerNumbersThanCurrent(input) == output)
  }

  @Test func testSmallerNumbersThanCurrent3() {
    let input = [7, 7, 7, 7]
    let output = [0, 0, 0, 0]
    #expect(HowManyNumbersAreSmallerThanTheCurrentNumber().smallerNumbersThanCurrent(input) == output)
  }
}
