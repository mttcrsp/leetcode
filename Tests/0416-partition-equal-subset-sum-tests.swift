@testable
import Leetcode
import Testing

@Suite
struct PartitionEqualSubsetSumTests {
  @Test func testCanPartition1() {
    let input = [1, 5, 11, 5]
    let output = true
    #expect(PartitionEqualSubsetSum().canPartition(input) == output)
  }

  @Test func testCanPartition2() {
    let input = [1, 2, 5]
    let output = false
    #expect(PartitionEqualSubsetSum().canPartition(input) == output)
  }
}
