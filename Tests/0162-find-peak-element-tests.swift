@testable
import Leetcode
import Testing

@Suite
struct FindPeakElementTests {
  @Test func testFindpeakelement1() {
    let input = [1, 2, 3, 1]
    let output = 2
    #expect(FindPeakElement().findPeakElement(input) == output)
  }

  @Test func testFindpeakelement2() {
    let input = [1, 2, 1, 3, 5, 6, 4]
    let output = 5
    #expect(FindPeakElement().findPeakElement(input) == output)
  }
}
