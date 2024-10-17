@testable
import Leetcode
import Testing

@Suite
struct SingleNumberTests {
  @Test func testSingleNumber1() {
    let input = [2, 2, 1]
    let output = 1
    #expect(SingleNumber().singleNumber(input) == output)
  }

  @Test func testSingleNumber2() {
    let input = [4, 1, 2, 1, 2]
    let output = 4
    #expect(SingleNumber().singleNumber(input) == output)
  }

  @Test func testSingleNumber3() {
    let input = [1]
    let output = 1
    #expect(SingleNumber().singleNumber(input) == output)
  }

  @Test func testSingleNumber4() {
    let input = [-1, 1, -1, 1, -2]
    let output = -2
    #expect(SingleNumber().singleNumber(input) == output)
  }
}
