@testable
import Leetcode
import Testing

@Suite
struct OutOfBoundaryPathsTests {
  @Test func testFindpaths1() {
    let input = (2, 2, 2, 0, 0)
    let output = 6
    #expect(OutOfBoundaryPaths().findPaths(input.0, input.1, input.2, input.3, input.4) == output)
  }

  @Test func testFindpaths2() {
    let input = (1, 3, 3, 0, 1)
    let output = 12
    #expect(OutOfBoundaryPaths().findPaths(input.0, input.1, input.2, input.3, input.4) == output)
  }
}
