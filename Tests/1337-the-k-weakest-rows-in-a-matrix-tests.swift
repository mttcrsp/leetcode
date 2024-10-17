@testable
import Leetcode
import Testing

@Suite
struct TheKWeakestRowsInAMatrixTests {
  @Test func testKWeakestRows1() {
    let input = (
      [
        [1, 1, 0, 0, 0],
        [1, 1, 1, 1, 0],
        [1, 0, 0, 0, 0],
        [1, 1, 0, 0, 0],
        [1, 1, 1, 1, 1],
      ],
      3
    )
    let output = [2, 0, 3]
    #expect(Set(TheKWeakestRowsInAMatrix().kWeakestRows(input.0, input.1)) == Set(output))
  }

  @Test func testKWeakestRows2() {
    let input = (
      [
        [1, 0, 0, 0],
        [1, 1, 1, 1],
        [1, 0, 0, 0],
        [1, 0, 0, 0],
      ],
      2
    )
    let output = [0, 2]
    #expect(TheKWeakestRowsInAMatrix().kWeakestRows(input.0, input.1) == output)
  }

  @Test func testKWeakestRows3() {
    let input = (
      [
        [0, 0, 0, 0, 0],
        [0, 0, 0, 0, 0],
        [0, 0, 0, 0, 0],
        [0, 0, 0, 0, 0],
        [0, 0, 0, 0, 0],
      ],
      3
    )
    let output = [0, 1, 2]
    #expect(Set(TheKWeakestRowsInAMatrix().kWeakestRows(input.0, input.1)) == Set(output))
  }

  @Test func testKWeakestRows4() {
    let input = (
      [
        [1, 1, 1, 1, 1, 1],
        [1, 1, 1, 1, 1, 1],
        [1, 1, 1, 1, 1, 1],
      ],
      1
    )
    let output = [0]
    #expect(Set(TheKWeakestRowsInAMatrix().kWeakestRows(input.0, input.1)) == Set(output))
  }
}
