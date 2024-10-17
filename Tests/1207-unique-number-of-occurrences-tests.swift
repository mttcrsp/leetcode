@testable
import Leetcode
import Testing

@Suite
struct UniqueNumberOfOccurrencesTests {
  @Test func testUniqueoccurrences1() {
    let input = [1, 2, 2, 1, 1, 3]
    let output = true
    #expect(UniqueNumberOfOccurrences().uniqueOccurrences(input) == output)
  }

  @Test func testUniqueoccurrences2() {
    let input = [1, 2]
    let output = false
    #expect(UniqueNumberOfOccurrences().uniqueOccurrences(input) == output)
  }

  @Test func testUniqueoccurrences3() {
    let input = [-3, 0, 1, -3, 1, 1, 1, -3, 10, 0]
    let output = true
    #expect(UniqueNumberOfOccurrences().uniqueOccurrences(input) == output)
  }
}
