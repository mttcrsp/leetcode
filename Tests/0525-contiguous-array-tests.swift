@testable
import Leetcode
import Testing

@Suite
struct ContiguousArrayTests {
  @Test func testFindMaxLength1() {
    let input = [0, 1]
    let output = 2
    #expect(ContiguousArray().findMaxLength(input) == output)
  }

  @Test func testFindMaxLength2() {
    let input = [0, 1, 0]
    let output = 2
    #expect(ContiguousArray().findMaxLength(input) == output)
  }

  @Test func testFindMaxLength3() {
    let input = [0, 1, 1, 1, 1, 1, 0]
    let output = 2
    #expect(ContiguousArray().findMaxLength(input) == output)
  }

  @Test func testFindMaxLength4() {
    let input = [0, 0, 0, 0, 1, 1, 1, 1, 1, 0]
    let output = 10
    #expect(ContiguousArray().findMaxLength(input) == output)
  }
}
