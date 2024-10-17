@testable
import Leetcode
import Testing

@Suite
struct ConstructTheRectangleTests {
  @Test func testConstructrectangle1() {
    let input = 4
    let output = [2, 2]
    #expect(ConstructTheRectangle().constructRectangle(input) == output)
  }

  @Test func testConstructrectangle2() {
    let input = 37
    let output = [37, 1]
    #expect(ConstructTheRectangle().constructRectangle(input) == output)
  }

  @Test func testConstructrectangle3() {
    let input = 122_122
    let output = [427, 286]
    #expect(ConstructTheRectangle().constructRectangle(input) == output)
  }

  @Test func testConstructrectangle4() {
    let input = 1
    let output = [1, 1]
    #expect(ConstructTheRectangle().constructRectangle(input) == output)
  }
}
