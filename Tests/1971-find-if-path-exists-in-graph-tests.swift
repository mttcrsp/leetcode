@testable
import Leetcode
import Testing

@Suite
struct FindIfPathExistsInGraphTests {
  @Test func testValidPath1() {
    let input = (3, [[0, 1], [1, 2], [2, 0]], 0, 2)
    let output = true
    #expect(FindIfPathExistsInGraph().validPath(input.0, input.1, input.2, input.3) == output)
  }

  @Test func testValidPath5() {
    let input = (6, [[0, 1], [0, 2], [3, 5], [5, 4], [4, 3]], 0, 5)
    let output = false
    #expect(FindIfPathExistsInGraph().validPath(input.0, input.1, input.2, input.3) == output)
  }
}
