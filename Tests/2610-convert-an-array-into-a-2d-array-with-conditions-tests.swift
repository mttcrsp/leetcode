@testable
import Leetcode
import Testing

@Suite
struct ConvertAnArrayIntoA2DArrayWithConditionsTests {
  @Test func testFindmatrix1() {
    let input = [1, 3, 4, 1, 2, 3, 1]
    let output = [[1, 3, 4, 2], [1, 3], [1]]
    #expect(
      ConvertAnArrayIntoA2DArrayWithConditions().findMatrix(input).map { Set($0) } ==
      output.map { Set($0) }
    )
  }

  @Test func testFindmatrix2() {
    let input = [1, 2, 3, 4]
    let output = [[4, 3, 2, 1]]
    #expect(
      ConvertAnArrayIntoA2DArrayWithConditions().findMatrix(input).map { Set($0) } ==
      output.map { Set($0) }
    )
  }
}
