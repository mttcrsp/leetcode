@testable
import Leetcode
import Testing

@Suite
struct FindLargestValueInEachTreeRowTests {
  @Test func testLargestvalues1() {
    let input = TreeNode([1, 3, 2, 5, 3, nil, 9])
    let output = [1, 3, 9]
    #expect(FindLargestValueInEachTreeRow().largestValues(input) == output)
  }

  @Test func testLargestvalues2() {
    let input = TreeNode([1, 2, 3])
    let output = [1, 3]
    #expect(FindLargestValueInEachTreeRow().largestValues(input) == output)
  }
}
