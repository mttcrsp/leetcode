@testable
import Leetcode
import Testing

@Suite
struct UniquePathsTests {
  @Test func testUniquepaths1() {
    let input = (3, 7)
    let output = 28
    #expect(UniquePaths().uniquePaths(input.0, input.1) == output)
  }

  @Test func testUniquepaths2() {
    let input = (3, 2)
    let output = 3
    #expect(UniquePaths().uniquePaths(input.0, input.1) == output)
  }

  @Test func testUniquepaths3() {
    let input = (3, 3)
    let output = 6
    #expect(UniquePaths().uniquePaths(input.0, input.1) == output)
  }

  @Test func testUniquepaths4() {
    let input = (4, 4)
    let output = 20
    #expect(UniquePaths().uniquePaths(input.0, input.1) == output)
  }
}
