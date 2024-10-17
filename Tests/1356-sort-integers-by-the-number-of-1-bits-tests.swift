@testable
import Leetcode
import Testing

@Suite
struct SortIntegersByTheNumberOf1BitsTests {
  @Test func testSortByBits1() {
    let input = [0, 1, 2, 3, 4, 5, 6, 7, 8]
    let output = [0, 1, 2, 4, 8, 3, 5, 6, 7]
    #expect(SortIntegersByTheNumberOf1Bits().sortByBits(input) == output)
  }

  @Test func testSortByBits2() {
    let input = [1024, 512, 256, 128, 64, 32, 16, 8, 4, 2, 1]
    let output = [1, 2, 4, 8, 16, 32, 64, 128, 256, 512, 1024]
    #expect(SortIntegersByTheNumberOf1Bits().sortByBits(input) == output)
  }
}
