@testable
import Leetcode
import Testing

@Suite
struct RemoveTrailingZerosFromAStringTests {
  @Test func testRemovetrailingzeros1() {
    let input = "51230100"
    let output = "512301"
    #expect(RemoveTrailingZerosFromAString().removeTrailingZeros(input) == output)
  }

  @Test func testRemovetrailingzeros2() {
    let input = "123"
    let output = "123"
    #expect(RemoveTrailingZerosFromAString().removeTrailingZeros(input) == output)
  }
}
