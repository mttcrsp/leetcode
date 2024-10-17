@testable
import Leetcode
import Testing

@Suite
struct MaximumPopulationYearTests {
  @Test func testMaximumpopulation1() {
    let input = [[1993, 1999], [2000, 2010]]
    let output = 1993
    #expect(MaximumPopulationYear().maximumPopulation(input) == output)
  }

  @Test func testMaximumpopulation2() {
    let input = [[1950, 1961], [1960, 1971], [1970, 1981]]
    let output = 1960
    #expect(MaximumPopulationYear().maximumPopulation(input) == output)
  }
}
