@testable
import Leetcode
import Testing

@Suite
struct MinimumChangesToMakeAlternatingBinaryStringTests {
  @Test func testMinOperations1() {
    let input = "0100"
    let output = 1
    #expect(MinimumChangesToMakeAlternatingBinaryString().minOperations(input) == output)
  }

  @Test func testMinOperations2() {
    let input = "10"
    let output = 0
    #expect(MinimumChangesToMakeAlternatingBinaryString().minOperations(input) == output)
  }

  @Test func testMinOperations3() {
    let input = "1111"
    let output = 2
    #expect(MinimumChangesToMakeAlternatingBinaryString().minOperations(input) == output)
  }

  @Test func testMinOperations4() {
    let input = "00111"
    let output = 2
    #expect(MinimumChangesToMakeAlternatingBinaryString().minOperations(input) == output)
  }
}
