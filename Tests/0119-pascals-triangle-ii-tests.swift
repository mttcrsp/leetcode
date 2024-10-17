@testable
import Leetcode
import Testing

@Suite
struct PascalsTriangleIiTests {
  @Test func testGetRow1() {
    let input = 0
    let output = [1]
    #expect(PascalsTriangleIi().getRow(input) == output)
  }

  @Test func testGetRow2() {
    let input = 1
    let output = [1, 1]
    #expect(PascalsTriangleIi().getRow(input) == output)
  }

  @Test func testGetRow3() {
    let input = 2
    let output = [1, 2, 1]
    #expect(PascalsTriangleIi().getRow(input) == output)
  }

  @Test func testGetRow4() {
    let input = 3
    let output = [1, 3, 3, 1]
    #expect(PascalsTriangleIi().getRow(input) == output)
  }

  @Test func testGetRow5() {
    let input = 5
    let output = [1, 5, 10, 10, 5, 1]
    #expect(PascalsTriangleIi().getRow(input) == output)
  }

  @Test func testGetRow6() {
    let input = 8
    let output = [1, 8, 28, 56, 70, 56, 28, 8, 1]
    #expect(PascalsTriangleIi().getRow(input) == output)
  }
}
