@testable
import Leetcode
import Testing

@Suite
struct MinimumNumberOfOperationsToMakeArrayEmptyTests {
  @Test func testMinoperations1() {
    let input = [2, 3, 3, 2, 2, 4, 2, 3, 4]
    let output = 4
    #expect(MinimumNumberOfOperationsToMakeArrayEmpty().minOperations(input) == output)
  }

  @Test func testMinoperations2() {
    let input = [2, 1, 2, 2, 3, 3]
    let output = -1
    #expect(MinimumNumberOfOperationsToMakeArrayEmpty().minOperations(input) == output)
  }
}
