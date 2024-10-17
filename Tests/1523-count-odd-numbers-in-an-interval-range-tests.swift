@testable
import Leetcode
import Testing

@Suite
struct CountOddNumbersInAnIntervalRangeTests {
  @Test func testCountOdds1() {
    let input = (3, 7)
    let output = 3
    #expect(CountOddNumbersInAnIntervalRange().countOdds(input.0, input.1) == output)
  }

  @Test func testCountOdds2() {
    let input = (8, 10)
    let output = 1
    #expect(CountOddNumbersInAnIntervalRange().countOdds(input.0, input.1) == output)
  }

  @Test func testCountOdds3() {
    let input = (4, 4)
    let output = 0
    #expect(CountOddNumbersInAnIntervalRange().countOdds(input.0, input.1) == output)
  }

  @Test func testCountOdds4() {
    let input = (5, 7)
    let output = 2
    #expect(CountOddNumbersInAnIntervalRange().countOdds(input.0, input.1) == output)
  }

  @Test func testCountOdds5() {
    let input = (5, 18)
    let output = 7
    #expect(CountOddNumbersInAnIntervalRange().countOdds(input.0, input.1) == output)
  }

  @Test func testCountOdds6() {
    let input = (6, 17)
    let output = 6
    #expect(CountOddNumbersInAnIntervalRange().countOdds(input.0, input.1) == output)
  }
}
