@testable
import Leetcode
import Testing

@Suite
struct SortColorsTests {
  @Test func testSortColors1() {
    var input = [2, 0, 2, 1, 1, 0]
    let output = [0, 0, 1, 1, 2, 2]
    SortColors().sortColors(&input)
    #expect(input == output)
  }

  @Test func testSortColors2() {
    var input = [2, 0, 1]
    let output = [0, 1, 2]
    SortColors().sortColors(&input)
    #expect(input == output)
  }

  @Test func testSortColors3() {
    var input = [0]
    let output = [0]
    SortColors().sortColors(&input)
    #expect(input == output)
  }

  @Test func testSortColors4() {
    var input = [1]
    let output = [1]
    SortColors().sortColors(&input)
    #expect(input == output)
  }

  @Test func testSortColors5() {
    var input = [2, 2, 2, 1]
    let output = [1, 2, 2, 2]
    SortColors().sortColors(&input)
    #expect(input == output)
  }

  @Test func testSortColors6() {
    var input = [1, 1, 1, 0]
    let output = [0, 1, 1, 1]
    SortColors().sortColors(&input)
    #expect(input == output)
  }
}
