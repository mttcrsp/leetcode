@testable
import Leetcode
import Testing

@Suite
struct TopKFrequentElementsTests {
  @Test func testTopkfrequent1() {
    let input = ([1, 1, 1, 2, 2, 3], 2)
    let output = [1, 2]
    #expect(Set(TopKFrequentElements().topKFrequent(input.0, input.1)) == Set(output))
  }

  @Test func testTopkfrequent2() {
    let input = ([1], 1)
    let output = [1]
    #expect(Set(TopKFrequentElements().topKFrequent(input.0, input.1)) == Set(output))
  }
}
