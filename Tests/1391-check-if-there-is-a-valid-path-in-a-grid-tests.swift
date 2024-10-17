@testable
import Leetcode
import Testing

@Suite
struct CheckIfThereIsAValidPathInAGridTests {
  @Test func testHasValidPath1() {
    let input = [[2, 4, 3], [6, 5, 2]]
    let output = true
    #expect(CheckIfThereIsAValidPathInAGrid().hasValidPath(input) == output)
  }

  @Test func testHasValidPath2() {
    let input = [[1, 2, 1], [1, 2, 1]]
    let output = false
    #expect(CheckIfThereIsAValidPathInAGrid().hasValidPath(input) == output)
  }

  @Test func testHasValidPath3() {
    let input = [[1, 1, 2]]
    let output = false
    #expect(CheckIfThereIsAValidPathInAGrid().hasValidPath(input) == output)
  }

  @Test func testHasValidPath4() {
    let input = [[1, 1]]
    let output = true
    #expect(CheckIfThereIsAValidPathInAGrid().hasValidPath(input) == output)
  }

  @Test func testHasValidPath5() {
    let input = [[2], [2]]
    let output = true
    #expect(CheckIfThereIsAValidPathInAGrid().hasValidPath(input) == output)
  }

  @Test func testHasValidPath6() {
    let input = [[2, 2]]
    let output = false
    #expect(CheckIfThereIsAValidPathInAGrid().hasValidPath(input) == output)
  }

  @Test func testHasValidPath7() {
    let input = [[4, 3], [5, 6]]
    let output = true
    #expect(CheckIfThereIsAValidPathInAGrid().hasValidPath(input) == output)
  }

  @Test func testHasValidPath8() {
    let input = [[2, 4, 3], [6, 5, 5]]
    let output = true
    #expect(CheckIfThereIsAValidPathInAGrid().hasValidPath(input) == output)
  }
}
