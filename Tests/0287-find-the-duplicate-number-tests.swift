@testable
import Leetcode
import Testing

@Suite
struct FindTheDuplicateNumberTests {
  @Test func testFindduplicate1() {
    let input = [1, 3, 4, 2, 2]
    let output = 2
    #expect(FindTheDuplicateNumber().findDuplicate(input) == output)
  }

  @Test func testFindduplicate2() {
    let input = [3, 1, 3, 4, 2]
    let output = 3
    #expect(FindTheDuplicateNumber().findDuplicate(input) == output)
  }
}
