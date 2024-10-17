@testable
import Leetcode
import Testing

@Suite
struct FindKClosestElementsTests {
  @Test func testFindClosestElements1() {
    let input = ([1, 2, 3, 4, 5], 4, 3)
    let output = [1, 2, 3, 4]
    #expect(FindKClosestElements().findClosestElements(input.0, input.1, input.2) == output)
  }

  @Test func testFindClosestElements2() {
    let input = ([1, 1, 2, 3, 4, 5], 4, 1)
    let output = [1, 1, 2, 3]
    #expect(FindKClosestElements().findClosestElements(input.0, input.1, input.2) == output)
  }
}
