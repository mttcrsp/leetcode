@testable
import Leetcode
import Testing

@Suite
struct NumberOfProvincesTests {
  @Test func testFindcirclenum1() {
    let input = [[1, 1, 0], [1, 1, 0], [0, 0, 1]]
    let output = 2
    #expect(NumberOfProvinces().findCircleNum(input) == output)
  }

  @Test func testFindcirclenum2() {
    let input = [[1, 0, 0], [0, 1, 0], [0, 0, 1]]
    let output = 3
    #expect(NumberOfProvinces().findCircleNum(input) == output)
  }
}
