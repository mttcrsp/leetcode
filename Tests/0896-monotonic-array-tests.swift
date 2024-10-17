@testable
import Leetcode
import Testing

@Suite
struct MonotonicArrayTests {
  @Test func testIsMonotonic1() {
    let input = [1, 2, 2, 3]
    let output = true
    #expect(MonotonicArray().isMonotonic(input) == output)
  }

  @Test func testIsMonotonic2() {
    let input = [6, 5, 4, 4]
    let output = true
    #expect(MonotonicArray().isMonotonic(input) == output)
  }

  @Test func testIsMonotonic3() {
    let input = [1, 3, 2]
    let output = false
    #expect(MonotonicArray().isMonotonic(input) == output)
  }
}
