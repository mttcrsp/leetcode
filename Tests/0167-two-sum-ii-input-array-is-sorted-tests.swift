@testable
import Leetcode
import Testing

@Suite
struct TwoSumIiInputArrayIsSortedTests {
  @Test func testTwosum1() {
    let input = ([2, 7, 11, 15], 9)
    let output = [1, 2]
    #expect(TwoSumIiInputArrayIsSorted().twoSum(input.0, input.1) == output)
  }

  @Test func testTwosum2() {
    let input = ([2, 3, 4], 6)
    let output = [1, 3]
    #expect(TwoSumIiInputArrayIsSorted().twoSum(input.0, input.1) == output)
  }

  @Test func testTwosum3() {
    let input = ([-1, 0], -1)
    let output = [1, 2]
    #expect(TwoSumIiInputArrayIsSorted().twoSum(input.0, input.1) == output)
  }
}
