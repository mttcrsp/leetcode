@testable
import Leetcode
import Testing

@Suite
struct SetMismatchTests {
  @Test func testFinderrornums1() {
    let input = [1, 2, 2, 4]
    let output = [2, 3]
    #expect(SetMismatch().findErrorNums(input) == output)
  }

  @Test func testFinderrornums2() {
    let input = [1, 1]
    let output = [1, 2]
    #expect(SetMismatch().findErrorNums(input) == output)
  }

  @Test func testFinderrornums3() {
    let input = [4, 4, 3, 2]
    let output = [4, 1]
    #expect(SetMismatch().findErrorNums(input) == output)
  }
}
