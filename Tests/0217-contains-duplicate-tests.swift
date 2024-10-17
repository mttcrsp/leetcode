@testable
import Leetcode
import Testing

@Suite
struct ContainsDuplicateTests {
  @Test func testContainsDuplicate1() {
    let input = [1, 2, 3, 1]
    let output = true
    #expect(ContainsDuplicate().containsDuplicate(input) == output)
  }

  @Test func testContainsDuplicate2() {
    let input = [1, 2, 3, 4]
    let output = false
    #expect(ContainsDuplicate().containsDuplicate(input) == output)
  }

  @Test func testContainsDuplicate3() {
    let input = [1, 1, 1, 3, 3, 4, 3, 2, 4, 2]
    let output = true
    #expect(ContainsDuplicate().containsDuplicate(input) == output)
  }
}
