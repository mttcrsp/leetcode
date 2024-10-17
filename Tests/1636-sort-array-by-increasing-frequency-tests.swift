@testable
import Leetcode
import Testing

@Suite
struct SortArrayByIncreasingFrequencyTests {
  @Test func testFrequencysort1() {
    let input = [1, 1, 2, 2, 2, 3]
    let output = [3, 1, 1, 2, 2, 2]
    #expect(SortArrayByIncreasingFrequency().frequencySort(input) == output)
  }

  @Test func testFrequencysort2() {
    let input = [2, 3, 1, 3, 2]
    let output = [1, 3, 3, 2, 2]
    #expect(SortArrayByIncreasingFrequency().frequencySort(input) == output)
  }

  @Test func testFrequencysort3() {
    let input = [-1, 1, -6, 4, 5, -6, 1, 4, 1]
    let output = [5, -1, 4, 4, -6, -6, 1, 1, 1]
    #expect(SortArrayByIncreasingFrequency().frequencySort(input) == output)
  }
}
