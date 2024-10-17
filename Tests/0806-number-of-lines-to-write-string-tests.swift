@testable
import Leetcode
import Testing

@Suite
struct NumberOfLinesToWriteStringTests {
  @Test func testNumberoflines1() {
    let input = (
      [10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10],
      "abcdefghijklmnopqrstuvwxyz"
    )
    let output = [3, 60]
    #expect(NumberOfLinesToWriteString().numberOfLines(input.0, input.1) == output)
  }

  @Test func testNumberoflines3() {
    let input = (
      [4, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10],
      "bbbcccdddaaa"
    )
    let output = [2, 4]
    #expect(NumberOfLinesToWriteString().numberOfLines(input.0, input.1) == output)
  }
}
