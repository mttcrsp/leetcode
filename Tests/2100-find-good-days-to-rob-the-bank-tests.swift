@testable
import Leetcode
import Testing

@Suite
struct FindGoodDaysToRobTheBankTests {
  @Test func testGoodDaysToRobBank1() {
    let input = ([5, 3, 3, 3, 5, 6, 2], 2)
    let output = [2, 3]
    #expect(FindGoodDaysToRobTheBank().goodDaysToRobBank(input.0, input.1) == output)
  }

  @Test func testGoodDaysToRobBank2() {
    let input = ([1, 1, 1, 1, 1], 0)
    let output = [0, 1, 2, 3, 4]
    #expect(FindGoodDaysToRobTheBank().goodDaysToRobBank(input.0, input.1) == output)
  }

  @Test func testGoodDaysToRobBank3() {
    let input = ([1, 2, 3, 4, 5, 6], 2)
    let output: [Int] = []
    #expect(FindGoodDaysToRobTheBank().goodDaysToRobBank(input.0, input.1) == output)
  }

  @Test func testGoodDaysToRobBank4() {
    let input = ([1], 5)
    let output: [Int] = []
    #expect(FindGoodDaysToRobTheBank().goodDaysToRobBank(input.0, input.1) == output)
  }

  @Test func testGoodDaysToRobBank5() {
    let input = ([0, 0, 0, 0, 0], 3)
    let output: [Int] = []
    #expect(FindGoodDaysToRobTheBank().goodDaysToRobBank(input.0, input.1) == output)
  }
}
