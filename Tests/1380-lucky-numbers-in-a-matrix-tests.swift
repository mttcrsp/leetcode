@testable
import Leetcode
import Testing

@Suite
struct LuckyNumbersInAMatrixTests {
  @Test func testLuckyNumbers1() {
    let input = [[3, 7, 8], [9, 11, 13], [15, 16, 17]]
    let output = [15]
    #expect(LuckyNumbersInAMatrix().luckyNumbers(input) == output)
  }

  @Test func testLuckyNumbers2() {
    let input = [[1, 10, 4, 2], [9, 3, 8, 7], [15, 16, 17, 12]]
    let output = [12]
    #expect(LuckyNumbersInAMatrix().luckyNumbers(input) == output)
  }

  @Test func testLuckyNumbers3() {
    let input = [[7, 8], [1, 2]]
    let output = [7]
    #expect(LuckyNumbersInAMatrix().luckyNumbers(input) == output)
  }

  @Test func testLuckyNumbers4() {
    let input = [[56216], [63251], [75772], [1945], [27014]]
    let output = [75772]
    #expect(LuckyNumbersInAMatrix().luckyNumbers(input) == output)
  }
}
