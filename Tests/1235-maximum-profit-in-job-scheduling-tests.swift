@testable
import Leetcode
import Testing

@Suite
struct MaximumProfitInJobSchedulingTests {
  @Test func testJobscheduling1() {
    let input = (
      [1, 2, 3, 3],
      [3, 4, 5, 6],
      [50, 10, 40, 70]
    )
    let output = 120
    #expect(MaximumProfitInJobScheduling().jobScheduling(input.0, input.1, input.2) == output)
  }

  @Test func testJobscheduling2() {
    let input = (
      [1, 2, 3, 4, 6],
      [3, 5, 10, 6, 9],
      [20, 20, 100, 70, 60]
    )
    let output = 150
    #expect(MaximumProfitInJobScheduling().jobScheduling(input.0, input.1, input.2) == output)
  }

  @Test func testJobscheduling3() {
    let input = (
      [1, 1, 1],
      [2, 3, 4],
      [5, 6, 4]
    )
    let output = 6
    #expect(MaximumProfitInJobScheduling().jobScheduling(input.0, input.1, input.2) == output)
  }

  @Test func testJobscheduling4() {
    let input = (
      [4, 2, 4, 8, 2],
      [5, 5, 5, 10, 8],
      [1, 2, 8, 10, 4]
    )
    let output = 18
    #expect(MaximumProfitInJobScheduling().jobScheduling(input.0, input.1, input.2) == output)
  }
}
