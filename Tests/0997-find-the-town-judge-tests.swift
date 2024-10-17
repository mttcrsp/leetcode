@testable
import Leetcode
import Testing

@Suite
struct FindTheTownJudgeTests {
  @Test func testFindJudge1() {
    let input = (2, [[1, 2]])
    let output = 2
    #expect(FindTheTownJudge().findJudge(input.0, input.1) == output)
  }

  @Test func testFindJudge2() {
    let input = (3, [[1, 3], [2, 3]])
    let output = 3
    #expect(FindTheTownJudge().findJudge(input.0, input.1) == output)
  }

  @Test func testFindJudge3() {
    let input = (3, [[1, 3], [2, 3], [3, 1]])
    let output = -1
    #expect(FindTheTownJudge().findJudge(input.0, input.1) == output)
  }

  @Test func testFindJudge4() {
    let input = (1, [] as [[Int]])
    let output = 1
    #expect(FindTheTownJudge().findJudge(input.0, input.1) == output)
  }
}
