@testable
import Leetcode
import Testing

@Suite
struct CheckArrayFormationThroughConcatenationTests {
  @Test func testCanformarray1() {
    let input = ([15, 88], [[88], [15]])
    let output = true
    #expect(CheckArrayFormationThroughConcatenation().canFormArray(input.0, input.1) == output)
  }

  @Test func testCanformarray2() {
    let input = ([91, 4, 64, 78], [[16, 18, 49]])
    let output = false
    #expect(CheckArrayFormationThroughConcatenation().canFormArray(input.0, input.1) == output)
  }

  @Test func testCanformarray3() {
    let input = ([91, 4, 64, 78], [[78], [4, 64], [91]])
    let output = true
    #expect(CheckArrayFormationThroughConcatenation().canFormArray(input.0, input.1) == output)
  }
}
