@testable
import Leetcode
import Testing

@Suite
struct ArrayPartitionTests {
  @Test func testArrayPairSum1() {
    let input = [1, 4, 3, 2]
    let output = 4
    #expect(ArrayPartition().arrayPairSum(input) == output)
  }

  @Test func testArrayPairSum2() {
    let input = [6, 2, 6, 5, 1, 2]
    let output = 9
    #expect(ArrayPartition().arrayPairSum(input) == output)
  }
}
