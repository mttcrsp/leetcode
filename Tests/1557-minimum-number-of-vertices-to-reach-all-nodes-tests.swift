@testable
import Leetcode
import Testing

@Suite
struct MinimumNumberOfVerticesToReachAllNodesTests {
  @Test func testFindSmallestSetOfVertices1() {
    let input = (6, [[0, 1], [0, 2], [2, 5], [3, 4], [4, 2]])
    let output = [0, 3]
    #expect(Set(MinimumNumberOfVerticesToReachAllNodes().findSmallestSetOfVertices(input.0, input.1)) == Set(output))
  }

  @Test func testFindSmallestSetOfVertices2() {
    let input = (5, [[0, 1], [2, 1], [3, 1], [1, 4], [2, 4]])
    let output = [3, 0, 2]
    #expect(Set(MinimumNumberOfVerticesToReachAllNodes().findSmallestSetOfVertices(input.0, input.1)) == Set(output))
  }
}
