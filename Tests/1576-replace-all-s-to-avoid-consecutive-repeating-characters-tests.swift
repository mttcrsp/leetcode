@testable
import Leetcode
import Testing

@Suite
struct ReplaceAllSToAvoidConsecutiveRepeatingCharactersTests {
  private let solver = ReplaceAllSToAvoidConsecutiveRepeatingCharacters()

  @Test func testModifyString1() {
    let input = "?zs"
    let output = solver.modifyString(input)
    #expect(validate(output))
  }

  @Test func testModifyString2() {
    let input = "ubv?w"
    let output = solver.modifyString(input)
    #expect(validate(output))
  }

  @Test func testModifyString3() {
    let input = "j?qg??b"
    let output = solver.modifyString(input)
    #expect(validate(output))
  }

  @Test func testModifyString4() {
    let input = "??yw?ipkj?"
    let output = solver.modifyString(input)
    #expect(validate(output))
  }

  @Test func testModifyString5() {
    let input = "a?b"
    let output = solver.modifyString(input)
    #expect(validate(output))
  }

  private func validate(_ output: String) -> Bool {
    for (lhs, rhs) in zip(output, output.dropFirst()) where lhs == rhs {
      return false
    }
    return true
  }
}
