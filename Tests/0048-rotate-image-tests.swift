@testable
import Leetcode
import Testing

@Suite
struct RotateImageTests {
  @Test func testRotate1() {
    var input = [[1, 2, 3], [4, 5, 6], [7, 8, 9]]
    let output = [[7, 4, 1], [8, 5, 2], [9, 6, 3]]
    RotateImage().rotate(&input)
    #expect(input == output)
  }

  @Test func testRotate2() {
    var input = [[5, 1, 9, 11], [2, 4, 8, 10], [13, 3, 6, 7], [15, 14, 12, 16]]
    let output = [[15, 13, 2, 5], [14, 3, 4, 1], [12, 6, 8, 9], [16, 7, 10, 11]]
    RotateImage().rotate(&input)
    #expect(input == output)
  }

  @Test func testRotate3() {
    var input = [[1]]
    let output = [[1]]
    RotateImage().rotate(&input)
    #expect(input == output)
  }

  @Test func testRotate4() {
    var input = [[1, 2], [3, 4]]
    let output = [[3, 1], [4, 2]]
    RotateImage().rotate(&input)
    #expect(input == output)
  }
}
